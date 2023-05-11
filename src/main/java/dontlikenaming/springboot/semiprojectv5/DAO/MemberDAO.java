package dontlikenaming.springboot.semiprojectv5.DAO;

import dontlikenaming.springboot.semiprojectv5.model.Member;

public interface MemberDAO {
    int selectLogin(Member m);
}
