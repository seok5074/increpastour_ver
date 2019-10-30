package com.tour.increpas.vo;

public class NoticeBoardVO {

	private int n_board_idx;
	private int n_board_views;

	private String n_board_title;
	private String n_board_contents;
	private String n_board_regDate;
	private String n_board_file;
	private String n_board_writer;

	public NoticeBoardVO() {
		super();
	}

	public NoticeBoardVO(int n_board_idx, int n_board_views, String n_board_title, String n_board_contents,
			String n_board_regDate, String n_board_file, String n_board_writer) {
		super();
		this.n_board_idx = n_board_idx;
		this.n_board_views = n_board_views;
		this.n_board_title = n_board_title;
		this.n_board_contents = n_board_contents;
		this.n_board_regDate = n_board_regDate;
		this.n_board_file = n_board_file;
		this.n_board_writer = n_board_writer;
	}

	public String getN_board_writer() {
		return n_board_writer;
	}

	public void setN_board_writer(String n_board_writer) {
		this.n_board_writer = n_board_writer;
	}

	public int getN_board_idx() {
		return n_board_idx;
	}

	public void setN_board_idx(int n_board_idx) {
		this.n_board_idx = n_board_idx;
	}

	public int getN_board_views() {
		return n_board_views;
	}

	public void setN_board_views(int n_board_views) {
		this.n_board_views = n_board_views;
	}

	public String getN_board_title() {
		return n_board_title;
	}

	public void setN_board_title(String n_board_title) {
		this.n_board_title = n_board_title;
	}

	public String getN_board_contents() {
		return n_board_contents;
	}

	public void setN_board_contents(String n_board_contents) {
		this.n_board_contents = n_board_contents;
	}

	public String getN_board_regDate() {
		return n_board_regDate;
	}

	public void setN_board_regDate(String n_board_regDate) {
		this.n_board_regDate = n_board_regDate;
	}

	public String getN_board_file() {
		return n_board_file;
	}

	public void setN_board_file(String n_board_file) {
		this.n_board_file = n_board_file;
	}
}