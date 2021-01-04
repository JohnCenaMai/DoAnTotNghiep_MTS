package sonmt.banmaytinh.pac.repository.dienthoai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.dienthoai.Giaotieketnoidienthoai;

@Repository
public interface GiaoTiepKetNoiDienThoaiRepository extends JpaRepository<Giaotieketnoidienthoai, Long> {

	@Query(value = "select * from giaotieketnoidienthoai where magiaotiep = \r\n" + 
			"(select magiaotiep from dienthoaichitiet where dienthoaichitiet.madienthoai = ?1)",nativeQuery = true)
	Giaotieketnoidienthoai getDoHoa(String madienthoai);
	
}
