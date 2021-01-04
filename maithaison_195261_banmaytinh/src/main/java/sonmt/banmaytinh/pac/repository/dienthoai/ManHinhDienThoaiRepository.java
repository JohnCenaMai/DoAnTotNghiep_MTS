package sonmt.banmaytinh.pac.repository.dienthoai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.dienthoai.Manhinhdienthoai;

@Repository
public interface ManHinhDienThoaiRepository extends JpaRepository<Manhinhdienthoai, Long> {

	@Query(value = "select * from manhinhdienthoai where mamanhinh = \r\n" + 
			"(select mamanhinh from dienthoaichitiet where dienthoaichitiet.madienthoai = ?1)",nativeQuery = true)
	Manhinhdienthoai getManHinh(String madienthoai);
	
}
