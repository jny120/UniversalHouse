//package tw.member.model;
//
//import java.util.List;
//
//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
//
//public interface OnlineUserCountsRepository  extends JpaRepository<OnlineUserCounts, Long> {
//	
//	 @Query(value = "SELECT usedate, hour, SUM(usercount) as usercounts FROM onlineusercounts GROUP BY usedate, hour", nativeQuery = true)
//	   List<UserCountsGroupBy> groupByUsedateAndHour();
//	 
//}
