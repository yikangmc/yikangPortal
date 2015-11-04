package com.yikang.protal.entity;

import java.util.List;
import java.util.Map;

public class ServiceItem {
    private Long serviceItemId;

    private String serviceTitle;

    private String serviceContent;

    private Long createTime;

    private Long updateTime;

    private Long createUserId;

    private Float servicePrice;

    private Byte outOfStock;

    private String picUrl;

    private Integer orderNumber;

    private Integer serviceTime;
    
    private Float 	price;
    
    private List<Map<String,Object>> serviceNotes;
    
    private List<Map<String,Object>> medicinalApparatus;
    
    private List<Map<String,Object>> serviceIntroduces;
    
    private List<Map<String,Object>> pictures;
    
    

    public Long getServiceItemId() {
        return serviceItemId;
    }

    public void setServiceItemId(Long serviceItemId) {
        this.serviceItemId = serviceItemId;
    }

    public String getServiceTitle() {
        return serviceTitle;
    }

    public void setServiceTitle(String serviceTitle) {
        this.serviceTitle = serviceTitle == null ? null : serviceTitle.trim();
    }

    public String getServiceContent() {
        return serviceContent;
    }

    public void setServiceContent(String serviceContent) {
        this.serviceContent = serviceContent == null ? null : serviceContent.trim();
    }

    public Long getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Long createTime) {
        this.createTime = createTime;
    }

    public Long getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Long updateTime) {
        this.updateTime = updateTime;
    }

    public Long getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(Long createUserId) {
        this.createUserId = createUserId;
    }

    public Float getServicePrice() {
        return servicePrice;
    }

    public void setServicePrice(Float servicePrice) {
        this.servicePrice = servicePrice;
    }

    public Byte getOutOfStock() {
        return outOfStock;
    }

    public void setOutOfStock(Byte outOfStock) {
        this.outOfStock = outOfStock;
    }

    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl == null ? null : picUrl.trim();
    }

    public Integer getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }

    public Integer getServiceTime() {
        return serviceTime;
    }

    public void setServiceTime(Integer serviceTime) {
        this.serviceTime = serviceTime;
    }

	public List<Map<String, Object>> getServiceNotes() {
		return serviceNotes;
	}

	public void setServiceNotes(List<Map<String, Object>> serviceNotes) {
		this.serviceNotes = serviceNotes;
	}

	public List<Map<String, Object>> getMedicinalApparatus() {
		return medicinalApparatus;
	}

	public void setMedicinalApparatus(List<Map<String, Object>> medicinalApparatus) {
		this.medicinalApparatus = medicinalApparatus;
	}

	public List<Map<String, Object>> getServiceIntroduces() {
		return serviceIntroduces;
	}

	public void setServiceIntroduces(List<Map<String, Object>> serviceIntroduces) {
		this.serviceIntroduces = serviceIntroduces;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public List<Map<String, Object>> getPictures() {
		return pictures;
	}

	public void setPictures(List<Map<String, Object>> pictures) {
		this.pictures = pictures;
	}
}