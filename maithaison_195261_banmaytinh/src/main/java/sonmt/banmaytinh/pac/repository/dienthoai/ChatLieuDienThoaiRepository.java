package sonmt.banmaytinh.pac.repository.dienthoai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.dienthoai.Chatlieudienthoai;

@Repository
public interface ChatLieuDienThoaiRepository extends JpaRepository<Chatlieudienthoai, Long> {

	@Query(value = "select * from chatlieudienthoai where machatlieu = \r\n" + 
			"(select machatlieu from dienthoaichitiet where dienthoaichitiet.madienthoai = ?1)",nativeQuery = true)
	Chatlieudienthoai getChatlieu(String madienthoai);	
	
}
