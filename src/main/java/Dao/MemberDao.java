package Dao;

import Model.Member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//import static Model.Role.MEMBER;

public class MemberDao {

    Map<String, Member> memberDb = new HashMap<>();

   {
       memberDb.put("awordofa@miu.edu", new Member("Addisalem","Wordofa" ,"awordofa@miu.edu","Addis123"));
       memberDb.put("akiros@miu.edu", new Member("Adiam","Kiros" ,"akiros@miu.edu","Adi123"));
       memberDb.put("ekwizera@miu.edu", new Member("Emelyne","Kwizera" ,"ekwizera@miu.edu","Eme123"));

   }

    public String addMember(Member member) {
        String msg;
        boolean check=findByEmail(member.getEmailAdd());
        if( check==false){
            memberDb.put(member.getEmailAdd(), member);
            msg="SUCCESS";
        }
        else{
            msg="FAILLER";
        }
        return msg;
    }

    public void deleteProduct(int productId){
        memberDb.remove(productId);
    }

    public void updateMember(Member member){
        memberDb.put(member.getEmailAdd(), member);
    }

    public List<Member> getAllMembers(){
        return new ArrayList<>(memberDb.values());
    }

    public Member getMemberById(int productId){
        return memberDb.get(productId);
    }

    public boolean findByEmail(String email){
        return memberDb.containsKey(email);
    }
}
