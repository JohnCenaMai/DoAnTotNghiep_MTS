package sonmt.banmaytinh.pac.repository.dienthoai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.dienthoai.Boxulydienthoai;

@Repository
public interface BoXuLyDienThoaiRepository extends JpaRepository<Boxulydienthoai, Long> {

	@Query(value = "select * from boxulydienthoai where macpu = \r\n" + 
			"(select macpu from dienthoaichitiet where dienthoaichitiet.madienthoai = ?1)",nativeQuery = true)
	Boxulydienthoai getBoXuLy(String madienthoai);
	
}
