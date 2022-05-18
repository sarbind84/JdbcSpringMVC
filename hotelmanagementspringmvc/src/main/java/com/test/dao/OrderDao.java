package com.test.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.test.beans.Order;
public class OrderDao {

JdbcTemplate template;

public void setTemplate(JdbcTemplate template) {
this.template = template;
} 
public int save(Order p){
String sql="insert into orders(name,qty,tbno) values('"+p.getName()+"',"+p.getQty()+",'"+p.getTb_no()+"')";
return template.update(sql);
}

public int update(Order p){
String sql="update orders set name='"+p.getName()+"', qty="+p.getQty()+",tbno='"+p.getTb_no()+"' where id="+p.getId()+"";
return template.update(sql);
}
public int delete(int id){
String sql="delete from orders where id="+id+"";
return template.update(sql);
}
public Order getEmpById(int id){
String sql="select * from orders where id=?";
return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Order>(Order.class));
}
public List<Order> getEmployees(){
return template.query("select * from orders",new RowMapper<Order>(){
public Order mapRow(ResultSet rs, int row) throws SQLException {
Order e=new Order(); //1ID|Name|qty|tbno
e.setId(rs.getInt(1));
e.setName(rs.getString(2));
e.setQty(rs.getFloat(3));
e.setTb_no(rs.getString(4));

return e;
}
});
}
}


