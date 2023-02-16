package tw.test.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class surveyService {
    @Autowired
    private surveyRepository surveyRepo;

    public surveyService() {

    }

    public List<survey> checksurveyTest(@Param("SURVEY") String survey) {
        return surveyRepo.checksurveyTest(survey);
    };

    public survey checksurveyTests(@Param("SURVEY") String survey) {
        return surveyRepo.checksurveyTestimg(survey);
    };

    public List<survey> findAll() {
        return surveyRepo.findAll();
    }

    public Page<survey> findAllByPage(Pageable pageable) {
        return surveyRepo.findAll(pageable);
    }

    public survey findByPk(Integer testPk) {
        survey b1 = null;
        Optional<survey> findById = surveyRepo.findById(testPk);
        if (findById.isPresent()) {
            b1 = findById.get();
        }
        return b1;
    }

    public survey findByfield(String survey) {
        survey b1 = null;

        Optional<survey> findbyfield = surveyRepo.checksurveyTestfield(survey);
        if (findbyfield.isPresent()) {
            b1 = findbyfield.get();
        }
        return b1;

    }

    public survey updataTest(survey survey) {
        // return tDao.updataTest(testCenter);
        return surveyRepo.save(survey);
    }

    public void deleteById(Integer id) {
        surveyRepo.deleteById(id);
    }

}
