package sonmt.banmaytinh.pac.repository.dienthoai;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import sonmt.banmaytinh.pac.model.dienthoai.Dienthoaichitiet;

@Repository
public interface DienThoaiChiTietRepository extends JpaRepository<Dienthoaichitiet, Long> {

}
