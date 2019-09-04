package com.example.tweat.repos;

import com.example.tweat.domain.Message;
import com.example.tweat.domain.User;
import com.example.tweat.domain.dto.MessageDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface MessageRepo extends CrudRepository<Message, Long> {

    @Query("select new com.example.tweat.domain.dto.MessageDto(" +
            "m," +
            " count(ml), " +
            "sum(case when ml =:user then 1 else 0 end)>0 ) " +
            "from Message m left join m.likes ml " +
            "group by m order by m.id desc")
    Page<MessageDto> findAll(Pageable pageable, @Param("user") User author);

    @Query("select new com.example.tweat.domain.dto.MessageDto(" +
            "m," +
            " count(ml), " +
            "sum(case when ml =:user then 1 else 0 end) > 0 ) " +
            "from Message m left join m.likes ml " +
            "where m.tag =:tag  " +
            "group by m order by m.id desc")
    Page<MessageDto> findByTag(@Param("tag") String tag, Pageable pageable, @Param("user") User author);



    @Query("select new com.example.tweat.domain.dto.MessageDto(" +
            "m," +
            " count(ml), " +
            "sum(case when ml =:user then 1 else 0 end) > 0 ) " +
            "from Message m left join m.likes ml " +
            "where m.author =:author  " +
            "group by m order by m.id desc")
    Page<MessageDto> findByUser(Pageable pageable, @Param("author") User author, @Param("user") User user);

    Message findMessageById(Long id);

}
