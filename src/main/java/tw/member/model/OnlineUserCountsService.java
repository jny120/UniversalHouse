//package tw.member.model;
//
//import java.util.List;
//import java.util.Optional;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//@Service
//public class OnlineUserCountsService {
//
//   @Autowired
//   OnlineUserCountsRepository OusRepo;
//
//   public OnlineUserCounts createUserCount(OnlineUserCounts userCount) {
//      return OusRepo.save(userCount);
//   }
//
//   public OnlineUserCounts updateLoginCount(OnlineUserCounts userCount) {
//      return OusRepo.save(userCount);
//   }
//
//   public void deleteLoginCount(Long id) {
//	   OusRepo.deleteById(id);
//   }
//
//   public Optional<OnlineUserCounts> getUserCount(Long id) {
//      return OusRepo.findById(id);
//   }
//
//   public List<OnlineUserCounts> getAllUserCounts() {
//      return OusRepo.findAll();
//   }
//   
//   public List<UserCountsGroupBy> getUserCountsGroupByUsedateAndHour() {
//	      return OusRepo.groupByUsedateAndHour();
//	   }
//}
