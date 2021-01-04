package sonmt.banmaytinh.pac.repository.dienthoai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.dienthoai.Bonhodienthoai;

@Repository
public interface BoNhoDienThoaiRepository extends JpaRepository<Bonhodienthoai, Long> {

	@Query(value = "select * from bonhodienthoai where mabonho = \r\n" + 
			"(select mabonho from dienthoaichitiet where dienthoaichitiet.madienthoai = ?1)",nativeQuery = true)
	Bonhodienthoai getBoNho(String madienthoai);	
	
}
