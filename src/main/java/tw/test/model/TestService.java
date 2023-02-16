package tw.test.model;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Service
@Transactional
public class TestService {

	@Autowired
	private testRepository tRepo;

	public TestService() {
		// this.tDao = new testCenterDao();
		// this.sDao = new totalScoreDao();
		// this.gDao = new galleryDao();
	}

	public testCenterBean findByPk(Integer testPk) {
		testCenterBean b1 = null;
		// System.out.println(testPk);
		Optional<testCenterBean> findById = tRepo.findById(testPk);
		if (findById != null) {
			b1 = findById.get();
		}
		return b1;
	}

	public testCenterBean updataTest(testCenterBean testCenter) {
		// return tDao.updataTest(testCenter);
		return tRepo.save(testCenter);

	}

	public List<testCenterBean> pushCsv(MultipartFile file) {

		try (
				InputStream in = file.getInputStream();
				InputStreamReader isr = new InputStreamReader(in, "utf-8");
				BufferedReader br = new BufferedReader(isr)) {
			CSVFormat.Builder builder = CSVFormat.Builder.create();
			builder.setHeader("testId", "examinationquestion", "field", "options", "options2", "options3", "options4");
			builder.setSkipHeaderRecord(true);
			Iterable<CSVRecord> records = builder.build().parse(br);
			List<testCenterBean> m = new ArrayList<>();

			for (CSVRecord record : records) {
				testCenterBean mem = new testCenterBean();
				mem.setTestId(record.get(0).replace(",", ""));
				mem.setExaminationquestion(record.get(1).replace(",", ""));
				mem.setField(record.get(2).replace(",", ""));
				mem.setOptions(record.get(3).replace(",", ""));
				mem.setOptions2(record.get(4).replace(",", ""));
				mem.setOptions3(record.get(5).replace(",", ""));
				mem.setOptions4(record.get(6).replace(",", ""));
				tRepo.save(mem);
				m.add(mem);
			}
			return m;
		} catch (FileNotFoundException e) {
			throw new RuntimeException(e);
		} catch (IOException e) {
			throw new RuntimeException(e);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public List<testCenterBean> checkFieldTest(@Param("FIELD") String field) {
		return tRepo.checkFieldTest(field);
	};

	public void deleteById(Integer id) {

		tRepo.deleteById(id);

	}

	public List<testCenterBean> readAll() {
		return tRepo.findAll();
	}

}
