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

    }

    public boolean addMember(Member member) {
        boolean check=false;
        if (memberDb == null) {
            memberDb.put(member.getEmailAdd(), member);
        }
        else {
             check = findByEmail(member.getEmailAdd());
            if (check == true) {
                memberDb.put(member.getEmailAdd(), member);
            }
        }
        return check;
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
