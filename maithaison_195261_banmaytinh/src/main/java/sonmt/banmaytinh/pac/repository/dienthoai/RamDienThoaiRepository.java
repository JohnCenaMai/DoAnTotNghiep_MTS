package sonmt.banmaytinh.pac.repository.dienthoai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.dienthoai.Ramdienthoai;

@Repository
public interface RamDienThoaiRepository extends JpaRepository<Ramdienthoai, Long> {

	@Query(value = "select * from ramdienthoai where maram = \r\n" + 
			"(select maram from dienthoaichitiet where dienthoaichitiet.madienthoai = ?1)",nativeQuery = true)
	Ramdienthoai getRam(String madienthoai);
	
}
