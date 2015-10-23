package com.yikang.protal.entity;

public class AppointmentOrder {
    private Long appointmentOrderId;

    private String parentLinkAddress;

    private String phoneNumber;

    private String myPhoneNumber;

    private String nickName;

    private Long appointmentDateTime;

    private Long timeQuanturmId;

    private Integer startTime;

    private Integer endTime;

    private Integer orderStatus;

    private Long provenceCode;

    private Long cityCode;

    private Long districtCode;

    private Double longitude;

    private Double latitude;

    private String detailAddress;

    private String mapPostionAddress;

    private Long assessmentId;

    private Integer serviceCount;

    private String orderNumber;

    private Byte dataSource;

    public Long getAppointmentOrderId() {
        return appointmentOrderId;
    }

    public void setAppointmentOrderId(Long appointmentOrderId) {
        this.appointmentOrderId = appointmentOrderId;
    }

    public String getParentLinkAddress() {
        return parentLinkAddress;
    }

    public void setParentLinkAddress(String parentLinkAddress) {
        this.parentLinkAddress = parentLinkAddress == null ? null : parentLinkAddress.trim();
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber == null ? null : phoneNumber.trim();
    }

    public String getMyPhoneNumber() {
        return myPhoneNumber;
    }

    public void setMyPhoneNumber(String myPhoneNumber) {
        this.myPhoneNumber = myPhoneNumber == null ? null : myPhoneNumber.trim();
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName == null ? null : nickName.trim();
    }

    public Long getAppointmentDateTime() {
        return appointmentDateTime;
    }

    public void setAppointmentDateTime(Long appointmentDateTime) {
        this.appointmentDateTime = appointmentDateTime;
    }

    public Long getTimeQuanturmId() {
        return timeQuanturmId;
    }

    public void setTimeQuanturmId(Long timeQuanturmId) {
        this.timeQuanturmId = timeQuanturmId;
    }

    public Integer getStartTime() {
        return startTime;
    }

    public void setStartTime(Integer startTime) {
        this.startTime = startTime;
    }

    public Integer getEndTime() {
        return endTime;
    }

    public void setEndTime(Integer endTime) {
        this.endTime = endTime;
    }

    public Integer getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Integer orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Long getProvenceCode() {
        return provenceCode;
    }

    public void setProvenceCode(Long provenceCode) {
        this.provenceCode = provenceCode;
    }

    public Long getCityCode() {
        return cityCode;
    }

    public void setCityCode(Long cityCode) {
        this.cityCode = cityCode;
    }

    public Long getDistrictCode() {
        return districtCode;
    }

    public void setDistrictCode(Long districtCode) {
        this.districtCode = districtCode;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public String getDetailAddress() {
        return detailAddress;
    }

    public void setDetailAddress(String detailAddress) {
        this.detailAddress = detailAddress == null ? null : detailAddress.trim();
    }

    public String getMapPostionAddress() {
        return mapPostionAddress;
    }

    public void setMapPostionAddress(String mapPostionAddress) {
        this.mapPostionAddress = mapPostionAddress == null ? null : mapPostionAddress.trim();
    }

    public Long getAssessmentId() {
        return assessmentId;
    }

    public void setAssessmentId(Long assessmentId) {
        this.assessmentId = assessmentId;
    }

    public Integer getServiceCount() {
        return serviceCount;
    }

    public void setServiceCount(Integer serviceCount) {
        this.serviceCount = serviceCount;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber == null ? null : orderNumber.trim();
    }

    public Byte getDataSource() {
        return dataSource;
    }

    public void setDataSource(Byte dataSource) {
        this.dataSource = dataSource;
    }
}