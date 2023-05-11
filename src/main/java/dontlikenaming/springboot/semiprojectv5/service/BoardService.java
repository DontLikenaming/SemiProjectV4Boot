package dontlikenaming.springboot.semiprojectv5.service;

import dontlikenaming.springboot.semiprojectv5.model.Board;

import java.util.List;

public interface BoardService {
    List<Board> readBoard(Integer cpage);
    int countBoard();

    List<Board> readBoard(Integer cpage, String ftype, String fkey);

    int countBoard(String ftype, String fkey);

    boolean newBoard(Board bd);

    Board readOneBoard(Integer bno);

    int countAllBoard();
}
