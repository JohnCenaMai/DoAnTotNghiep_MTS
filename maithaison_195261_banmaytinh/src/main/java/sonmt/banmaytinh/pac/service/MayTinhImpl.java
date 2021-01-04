package sonmt.banmaytinh.pac.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import sonmt.banmaytinh.pac.model.Maytinh;
import sonmt.banmaytinh.pac.repository.MayTinhRepository;

@Service
public class MayTinhImpl implements MayTinhService {

	@Autowired
	private MayTinhRepository mayTinhRepository;
	
	@Override
	public Page<Maytinh> findPaginated(int pageNo, int pageSize, String sortField) {
		// TODO Auto-generated method stub
		//Sort sort = sortDirection.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortField).ascending() :
		//	Sort.by(sortField).descending();
		
		Sort sort = Sort.by(sortField).ascending();
		
		Pageable pageable = PageRequest.of(pageNo - 1, pageSize, sort);
		return this.mayTinhRepository.findAll(pageable);
	}

}
