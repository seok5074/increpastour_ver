package com.tour.increpas.vo;

public class Package_do_tour_VO {

	private int do_idx; // 일련번호
	private int do_total; // 패키지 일수
	private int do_price; // 패키지 총액
	private int do_seatno; // 좌석넘버

	private String do_name; // 패키지 이름
	private String do_start_date; // 출발날짜
	private String do_end_date; // 도착날짜
	private String do_image;// 여행 사진 상세
	private String do_thumbnail;// 패키지 여행 썸네일
	private String do_contents; // 패키지여행 설명란
	private String do_start; // 출발 도시
	private String do_arrive;// 도착 도시
	private String do_region;
	private boolean do_bus; // 버스여부
	private String do_busclass; // 버스 크기
	private boolean do_air; // 비행기여부
	private String do_airclass; // 비행기 클라스
	private String do_hotel_class;// 호텔클라스
	private String do_busagency;// 버스 회사
	private String do_airagency;// 비행기 회사
	private String do_theme;// 테마여행
	private String do_status;// 현재상태 : 예메가능; 예매불가
	private boolean do_free; // 자유일정가능
	private boolean do_shopping;// 쇼핑가능
	private String do_manager;// 담당 매니저

	// 지도 위도 경도
	private int idx;
	private String area;
	private double location_lat;
	private double location_lng;

	// 기본생성자
	public Package_do_tour_VO() {
	}

	// 패키지 리스트
	public Package_do_tour_VO(int do_idx, int do_total, int do_price, int do_seatno, String do_name,
			String do_start_date, String do_end_date, String do_image, String do_thumbnail, String do_contents,
			String do_start, String do_arrive, String do_region, boolean do_bus, String do_busclass, boolean do_air,
			String do_airclass, String do_hotel_class, String do_busagency, String do_airagency, String do_theme,
			String do_status, boolean do_free, boolean do_shopping, String do_manager) {
		super();
		this.do_idx = do_idx;
		this.do_total = do_total;
		this.do_price = do_price;
		this.do_seatno = do_seatno;
		this.do_name = do_name;
		this.do_start_date = do_start_date;
		this.do_end_date = do_end_date;
		this.do_image = do_image;
		this.do_thumbnail = do_thumbnail;
		this.do_contents = do_contents;
		this.do_start = do_start;
		this.do_arrive = do_arrive;
		this.do_region = do_region;
		this.do_bus = do_bus;
		this.do_busclass = do_busclass;
		this.do_air = do_air;
		this.do_airclass = do_airclass;
		this.do_hotel_class = do_hotel_class;
		this.do_busagency = do_busagency;
		this.do_airagency = do_airagency;
		this.do_theme = do_theme;
		this.do_status = do_status;
		this.do_free = do_free;
		this.do_shopping = do_shopping;
		this.do_manager = do_manager;

	}

	// 맵 위도경도 리스트 뽑아내기
	public Package_do_tour_VO(int idx, String area, float location_lat, float location_lng) {
		super();
		this.idx = idx;
		this.area = area;
		this.location_lat = location_lat;
		this.location_lng = location_lng;

	}

	// 맵 getter setter
	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public double getLocation_lat() {
		return location_lat;
	}

	public void setLocation_lat(double location_lat) {
		this.location_lat = location_lat;
	}

	public double getLocation_lng() {
		return location_lng;
	}
	// 맵 getter setter

	public void setLocation_lng(double location_lng) {
		this.location_lng = location_lng;
	}

	public int getdo_idx() {
		return do_idx;
	}

	public void setdo_idx(int do_idx) {
		this.do_idx = do_idx;
	}

	public int getdo_total() {
		return do_total;
	}

	public void setdo_total(int do_total) {
		this.do_total = do_total;
	}

	public int getdo_price() {
		return do_price;
	}

	public void setdo_price(int do_price) {
		this.do_price = do_price;
	}

	public int getdo_seatno() {
		return do_seatno;
	}

	public void setdo_seatno(int do_seatno) {
		this.do_seatno = do_seatno;
	}

	public String getdo_name() {
		return do_name;
	}

	public void setdo_name(String do_name) {
		this.do_name = do_name;
	}

	public String getdo_start_date() {
		return do_start_date;
	}

	public void setdo_start_date(String do_start_date) {
		this.do_start_date = do_start_date;
	}

	public String getdo_end_date() {
		return do_end_date;
	}

	public void setdo_end_date(String do_end_date) {
		this.do_end_date = do_end_date;
	}

	public String getdo_image() {
		return do_image;
	}

	public void setdo_image(String do_image) {
		this.do_image = do_image;
	}

	public String getdo_thumbnail() {
		return do_thumbnail;
	}

	public void setdo_thumbnail(String do_thumbnail) {
		this.do_thumbnail = do_thumbnail;
	}

	public String getdo_contents() {
		return do_contents;
	}

	public void setdo_contents(String do_contents) {
		this.do_contents = do_contents;
	}

	public String getdo_start() {
		return do_start;
	}

	public void setdo_start(String do_start) {
		this.do_start = do_start;
	}

	public String getdo_arrive() {
		return do_arrive;
	}

	public void setdo_arrive(String do_arrive) {
		this.do_arrive = do_arrive;
	}

	public String getDo_region() {
		return do_region;
	}

	public void setDo_region(String do_region) {
		this.do_region = do_region;
	}

	public boolean getdo_bus() {
		return do_bus;
	}

	public void setdo_bus(boolean do_bus) {
		this.do_bus = do_bus;
	}

	public String getdo_busclass() {
		return do_busclass;
	}

	public void setdo_busclass(String do_busclass) {
		this.do_busclass = do_busclass;
	}

	public boolean getdo_air() {
		return do_air;
	}

	public void setdo_air(boolean do_air) {
		this.do_air = do_air;
	}

	public String getdo_airclass() {
		return do_airclass;
	}

	public void setdo_airclass(String do_airclass) {
		this.do_airclass = do_airclass;
	}

	public String getdo_hotel_class() {
		return do_hotel_class;
	}

	public void setdo_hotel_class(String do_hotel_class) {
		this.do_hotel_class = do_hotel_class;
	}

	public String getdo_busagency() {
		return do_busagency;
	}

	public void setdo_busagency(String do_busagency) {
		this.do_busagency = do_busagency;
	}

	public String getdo_airagency() {
		return do_airagency;
	}

	public void setdo_airagency(String do_airagency) {
		this.do_airagency = do_airagency;
	}

	public String getdo_theme() {
		return do_theme;
	}

	public void setdo_theme(String do_theme) {
		this.do_theme = do_theme;
	}

	public String getdo_status() {
		return do_status;
	}

	public void setdo_status(String do_status) {
		this.do_status = do_status;
	}

	public boolean getdo_free() {
		return do_free;
	}

	public void setdo_free(boolean do_free) {
		this.do_free = do_free;
	}

	public boolean getdo_shopping() {
		return do_shopping;
	}

	public void setdo_shopping(boolean do_shopping) {
		this.do_shopping = do_shopping;
	}

	public String getdo_manager() {
		return do_manager;
	}

	public void setdo_manager(String do_manager) {
		this.do_manager = do_manager;
	}

}
