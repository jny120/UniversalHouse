package tw.test.action;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.security.Principal;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.Date;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.apache.commons.io.IOUtils;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.SelfInjection.Split;
import tw.member.model.Member;
import tw.member.model.MemberService;
import tw.member.model.VerificationService;
import tw.test.model.QuestionResultsDto;
import tw.test.model.TestService;
import tw.test.model.galleryBean;
import tw.test.model.galleryDao;
import tw.test.model.survey;
import tw.test.model.surveyService;
import tw.test.model.testCenterBean;
import tw.test.model.totalScore;
import tw.test.model.totalScoreDao;

@RequestMapping("/admin")
@Controller
public class backStageController {
    @Autowired
    VerificationService vService;

    @Autowired
    private TestService tService;

    @Autowired
    private galleryDao gService;

    @Autowired
    private totalScoreDao totalService;

    @Autowired
    private surveyService surveyService;

    @Autowired
    private MemberService memberService;

    // deleteTest
    @PostMapping("/deleteTest.do")
    private void processRequest(
            @RequestParam("testpk") String testPk,
            Model m) {
        System.out.println(testPk + "+++++++++++++++++++");
        tService.deleteById(Integer.parseInt(testPk));

    }

    // pushcsv
    @GetMapping("/PushCsv")
    public String processMainAction() {
        return "/test/push/PushCsv";
    }

    @GetMapping("/insertTest")
    public String processMainAction2() {
        return "/test/push/insertTest";
    }

    @PostMapping("/PushCsv.do")
    private String processRequest(
            @RequestParam("file") MultipartFile file,
            Model m) {

        List<testCenterBean> testCenterBean = tService.pushCsv(file);
        m.addAttribute("testCenterBean", testCenterBean);
        return "/test/push/pushCsvOK";
    }

    @RequestMapping("/survey.controller")
    @ResponseBody
    public List<survey> processReadAll(Model m) {
        return surveyService.findAll();
    }

    // @RequestMapping("/ShowTestServlet.controller")
    // @ResponseBody
    // public String processRequest2(
    // @RequestParam("field") String field,
    // Model m) {
    // System.out.println(field);
    // List<testCenterBean> testCenterBean = tService.checkFieldTest(field);
    // // m.addAttribute("testCenterBean", testCenterBean);
    // // System.out.println(testCenterBean);
    // m.addAttribute("testCenterBean", testCenterBean);
    // return "/test/testStage/showbackfrontStage1";
    // }
    @PostMapping(path = "/testBackstage1")
    public String processforntpage1(
            @RequestParam("surveypk") Integer surveypk,
            Model m) {
        survey survey = surveyService.findByPk(surveypk);
        m.addAttribute("survey", survey);
        return "/test/testStage/showbackfrontStage1";
    }

    // @GetMapping("/showbackfrontStage1/{surveypk}")
    // public survey processforntpage2(
    // @RequestParam("surveypk") Integer surveypk,
    // Model m) {
    // survey survey = surveyService.findByPk(surveypk);
    // m.addAttribute("survey", survey);
    // return survey;
    // }

    @GetMapping(path = "/testBackstage")
    public String processforntpage(Model m) {
        return "/test/testStage/showbackfrontStage";
    }

    @RequestMapping(path = "/showtester")
    public String processAction(Model m) {
        // List<testCenterBean> testCenterBean = tService.readAll();
        // List<totalScore> total = totalService.showallTotalScore();
        // m.addAttribute("total", total);
        return "/test/testStage/testtest";
    }

    @RequestMapping(path = "/showQuestionResults")
    public String showQuestionResultss(Model m) {
        return "/test/testStage/showQuestionResults";
    }

    @GetMapping(path = "/showQuestionResults.controller")
    @ResponseBody
    public String showQuestionResults(Model m) throws JsonProcessingException {
        List<totalScore> total = totalService.showallTotalScore();
        List<QuestionResultsDto> results = new ArrayList<>();

        for (totalScore totalScore : total) {
            if (totalScore.getFraction() == null) {
                QuestionResultsDto result = new QuestionResultsDto();
                result.setId(totalScore.getId());
                result.setMemberId(totalScore.getMemberId());
                result.setInputRadio(totalScore.getInputRadio());
                result.setInputRadio2(totalScore.getInputRadio2());
                results.add(result);
            }
        }
        System.out.println(results + "++++++++++++++++");
        // String jsonString = mapper.writeValueAsString(registerDto);
        ObjectMapper mapper = new ObjectMapper();
        String jsonString = mapper.writeValueAsString(results);

        System.out.println(jsonString + "+++++++++++++111+++");
        // m.addAttribute("nullFractions", results);

        return jsonString;
    }

    @GetMapping(path = "/showalltotal.controller")
    @ResponseBody
    public List<totalScore> showalltotal() {
        List<totalScore> total = totalService.showallTotalScore();
        // m.addAttribute("test", testCenterBean);
        return total;
    }

    @RequestMapping(path = "/testcenter.controller")
    @ResponseBody
    public List<survey> processtestcenter(Model m) {
        List<survey> survey = surveyService.findAll();
        // m.addAttribute("test", testCenterBean);
        return survey;
    }

    @RequestMapping("/ShowTestServlet.controller")
    @ResponseBody
    public List<testCenterBean> processRequest2(
            @RequestParam("field") String field,
            Model m) {
        System.out.println("123");
        System.out.println(field.replaceAll("\"", ""));
        String fields = field.replaceAll("\"", "");
        List<testCenterBean> testCenterBean = tService.checkFieldTest(fields);

        return testCenterBean;
    }

    @RequestMapping("/UpdataTest.controller")
    public ModelAndView processRequest(
            testCenterBean tBean,
            Model m) {

        tService.updataTest(tBean);
        // return "/test/testStage/testtest";
        return new ModelAndView("redirect:/admin/testBackstage");
    }

    // img
    @RequestMapping(path = "/ImgMaintain2.controller")
    public String processAction2(Model m) {
        List<galleryBean> gallerylist = gService.selectAll();
        m.addAttribute("test", gallerylist);
        System.out.println(gallerylist.toString());
        return "/test/testStage/backStage";
    }

    @RequestMapping(path = "/ImgMaintain.controller2")
    public String processAction3(Model m) {
        List<galleryBean> gallerylist = gService.selectAll();
        m.addAttribute("test", gallerylist);
        System.out.println(gallerylist.toString());
        return "/test/show/showAllImg";
    }

    @PostMapping("/PushTestImage.do")
    private ModelAndView processRequest(
            @RequestParam("answer") String answer,
            @RequestParam("image") MultipartFile image,
            Model m) throws IOException {

        String fileName = image.getOriginalFilename();
        byte[] b = image.getBytes();

        if (fileName != null && fileName.length() != 0) {
            saveImg(answer, b);
        }
        return new ModelAndView("redirect:/admin/ImgMaintain.controller");

    }

    private void saveImg(String answer, byte[] b) {
        galleryBean gBean = new galleryBean(answer, b);
        gService.insert(gBean);
        // System.out.println(gBean.toString());
    }

    @RequestMapping("images.controller/{imagePk}")
    @ResponseBody
    public byte[] processByteArrayImageAction(
            @PathVariable("imagePk") int imagePk,
            HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        galleryBean gBean = gService.findByPk(imagePk);
        byte[] picturebyte = gBean.getTestImage();
        InputStream is = new ByteArrayInputStream(picturebyte);

        return IOUtils.toByteArray(is);

    }

    @PostMapping("/testupdate.controller")
    public String processtestupdate(@RequestParam("testPk") Integer testPk,
            Model m) {
        testCenterBean testCenterBean = tService.findByPk(testPk);
        System.out.println(testPk);
        System.out.println(testCenterBean);
        m.addAttribute("update", testCenterBean);
        return "/test/testStage/testupdate";

    }

    @PostMapping("/deleteImg.do")
    @ResponseBody
    private void processdeleteImg(
            @RequestParam("imagePk") String imagePk,
            Model m) {
        gService.deleteByImgPk(Integer.parseInt(imagePk));
    }

    // surveyService
    @PostMapping("/InsertNewSurvey.controller")
    @ResponseBody
    public ModelAndView processSurvey(
            @RequestParam("survey") String survey,
            @RequestParam("surveytype") String surveytype,
            @RequestParam("welcometext") String welcometext,
            @RequestParam("endtext") String endtext,
            @RequestParam("testImage") MultipartFile image,
            // survey survey,
            Model m) throws IOException, SerialException, SQLException {
        survey survey2 = new survey();
        survey2.setSurvey(survey);
        survey2.setSurveytype(surveytype);
        survey2.setWelcometext(welcometext);
        survey2.setEndtext(endtext);

        byte[] b = image.getBytes();
        byte[] blob = null;
        // blob = new SerialBlob(b);
        survey2.setTestImage(b);
        surveyService.updataTest(survey2);
        if (surveytype.equals("心理測驗")) {
            // tService.checkFieldTest("心理測驗");
            m.addAttribute("surveytype", survey2);
            return new ModelAndView("/test/testStage/insertsurvey01");
        } else if (surveytype.equals("問卷調查")) {
            m.addAttribute("surveytype", survey2);
            return new ModelAndView("/test/testStage/insertsurvey02");
        }
        return null;
    }

    @PostMapping("/updateSurvey.controller")
    @ResponseBody
    public ModelAndView processSurveyupdate(
            @RequestParam("surveypk") Integer surveypk,
            @RequestParam("survey") String survey,
            @RequestParam("surveytype") String surveytype,
            @RequestParam("welcometext") String welcometext,
            @RequestParam("endtext") String endtext,
            @RequestParam("testImage") MultipartFile image,
            // survey survey,
            Model m) throws IOException, SerialException, SQLException {
        survey survey2 = new survey();
        survey2.setSurveypk(surveypk);
        survey2.setSurvey(survey);
        survey2.setSurveytype(surveytype);
        survey2.setWelcometext(welcometext);
        survey2.setEndtext(endtext);

        byte[] b = image.getBytes();
        byte[] blob = null;
        // blob = new SerialBlob(b);
        survey2.setTestImage(b);
        surveyService.updataTest(survey2);

        if (surveytype.equals("心理測驗")) {
            // tService.checkFieldTest("心理測驗");
            m.addAttribute("surveytype", survey2);
            return new ModelAndView("/test/testStage/updatesurvey02");
        }
        return null;
    }

    @PostMapping("/insertNewTestPage")
    @ResponseBody
    public void processtinsertsetcenter(
            @RequestBody List<testCenterBean> test,
            Model m) {

        System.out.println("46545" + test);
        for (testCenterBean testCenterBean : test) {
            tService.updataTest(testCenterBean);
        }

        m.addAttribute("testCenterBean", test);

    }

    @PostMapping("deleteSurvey")
    @ResponseBody
    public String deleteSurvey(@RequestParam("surveypk") Integer surveypk) {
        survey surveyname = surveyService.findByPk(surveypk);
        String sname = surveyname.getSurvey();
        System.out.println(sname);
        List<testCenterBean> testCenterBean = tService.checkFieldTest(sname);

        for (int i = 0; i < testCenterBean.size(); i++) {

            tService.deleteById(testCenterBean.get(i).getTestpk());
        }

        surveyService.deleteById(surveypk);
        return "success";
    }

    @GetMapping("/ShowsurveyImgServlet.do/{surveyId}")
    @ResponseBody
    private byte[] showImg(@PathVariable("surveyId") Integer surveyId, HttpServletResponse response)
            throws IOException, ServletException, SerialException, SQLException {
        survey survey = surveyService.findByPk(surveyId);
        return survey.getTestImage();
    }

    // findbyfield
    @GetMapping("/ShowsurveyImgbyfield.do/{field}")
    @ResponseBody
    private byte[] showImgfield(@PathVariable("field") String field, HttpServletResponse response)
            throws IOException, ServletException, SerialException, SQLException {
        survey survey = surveyService.findByfield(field);
        return survey.getTestImage();
    }

    // 導出CSV
    @GetMapping(value = "/exportCsv")
    public void exportCsv(HttpServletResponse response) throws IOException {
        String fileName = "output.csv"; // 輸出CSV的檔案名稱
        response.setContentType("text/csv; charset=UTF-8"); // 設定輸出為UTF-8中文才不會跑掉
        response.setHeader("Content-Disposition", "attachment; filename=" + fileName);

        // 這邊要改成各自的BEAN

        List<totalScore> beans = totalService.showallTotalScore();
        try (PrintWriter writer = response.getWriter()) {
            // 這是各位的欄位名稱
            writer.println("測驗編號,測驗者名稱,測驗題庫,測驗分數");
            // 這裡也要改成各位抓的值
            for (totalScore bean : beans) {
                writer.println(bean.getId() + "," + bean.getMemberId() + "," + bean.getInputRadio()
                        + "," + bean.getFraction());
            }
        }
    }

    // 問卷
    @GetMapping(value = "/exportCsvcon")
    public void exportCsvcon(HttpServletResponse response) throws IOException {
        String fileName = "output.csv"; // 輸出CSV的檔案名稱
        response.setContentType("text/csv; charset=UTF-8"); // 設定輸出為UTF-8中文才不會跑掉
        response.setHeader("Content-Disposition", "attachment; filename=" + fileName);

        // 這邊要改成各自的BEAN

        List<totalScore> beans = totalService.showallTotalScore();
        try (PrintWriter writer = response.getWriter()) {
            // 這是各位的欄位名稱
            writer.println("測驗編號,測驗者名稱,測驗題庫,測驗結果");
            // 這裡也要改成各位抓的值
            for (totalScore bean : beans) {
                writer.println(bean.getId() + "," + bean.getMemberId() + "," + bean.getInputRadio()
                        + "," + bean.getInputRadio2());
            }
        }
    }

    // 上下架
    @PostMapping("updateOrDownSurvey")
    @ResponseBody
    public String updateOrDownSurvey(survey survey, Model m) {
        // 上架 下架 審核中
        survey.getSurveypk();
        survey surveyw = surveyService.findByPk(survey.getSurveypk());
        System.out.println(surveyw);
        surveyw.getShelves();
        if (surveyw.getShelves() == null || surveyw.getShelves().equals("下架")) {
            surveyw.setShelves("上架");
            surveyService.updataTest(surveyw);
            // == "上架"
        } else if (surveyw.getShelves().equals("上架")) {
            surveyw.setShelves("下架");
            surveyService.updataTest(surveyw);
        }

        return "success";
    }

    @PostMapping("/sendemailybyall")
    @ResponseBody
    public String sendemailybyall(@RequestParam("surveypk") Integer surveypk, Principal p, Model model,
            HttpServletRequest request)
            throws AddressException, MessagingException, IOException {
        String requestURI = request.getRequestURI();
        System.out.println(requestURI);
        survey survey = surveyService.findByPk(surveypk);
        String Surveypk = Integer.toString(survey.getSurveypk());
        String surveys = survey.getSurvey();
        System.out.println("surveypk=" + Surveypk + "&survey=" + surveys);
        String questURLStr = "surveypk=" + Surveypk + "&survey=" + surveys;
//        List<Member> members = memberService.findAll();// 獲取所有會員
//        for (Member member : members) { // 使用迴圈遍歷每個會員
//            sendmails(member, questURLStr);
////            System.out.println(member);
//        }
        Member members = memberService.findByMemberPk(2033);
        sendmails(members, questURLStr);
        return "success";
    }

    // 送信function
    private void sendmails(Member member, String questURLStr) throws AddressException, MessagingException, IOException {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("nw755162@gmail.com", "taaywykdwiynfabo");
            }
        });
        Message msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress("nw755162@gmail.com", false));

        msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(member.getEmail()));
        msg.setSubject("UniversalHouse Verification email");
        msg.setContent("UniversalHouse Verification email1", "text/html");
        msg.setSentDate(new Date());

        MimeBodyPart messageBodyPart = new MimeBodyPart();
        messageBodyPart.setContent("『萬事屋|UniversalHouse』調查問卷", "text/html");
        messageBodyPart.setContent("『萬事屋|UniversalHouse』平台使用滿意度調查問卷"
                + "<a href='http://localhost:8080/testgo.do?" + questURLStr + "'>" // 跳轉網址
                + "<div style=\"background-color:black;border-radius:40px; width:150px;font-weight:600;font-size:20px;color:#fff;font-family:'Helvetica';margin:50px 200px\" "
                + "align='center'>Go</div></a>", "text/html; charset=utf-8");

        Multipart multipart = new MimeMultipart();
        multipart.addBodyPart(messageBodyPart);

        msg.setContent(multipart);
        Transport.send(msg);
    }

}
