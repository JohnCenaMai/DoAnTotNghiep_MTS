package sonmt.banmaytinh.pac.repository.dienthoai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.dienthoai.Cameradienthoai;

@Repository
public interface CameraDienThoaiRepository extends JpaRepository<Cameradienthoai, Long> {

	@Query(value = "select * from cameradienthoai where macamera = \r\n" + 
			"(select macamera from dienthoaichitiet where dienthoaichitiet.madienthoai = ?1)",nativeQuery = true)
	Cameradienthoai getCamera(String madienthoai);	
	
}
