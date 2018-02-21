package bean;

public class ResultBean {

    /**
     * 温度
     */
    private String temperature;

    /**
     * 二氧化碳
     */
    private String carbonDioxide;

    /**
     * 光照
     */
    private String illumination;

    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    public String getCarbonDioxide() {
        return carbonDioxide;
    }

    public void setCarbonDioxide(String carbonDioxide) {
        this.carbonDioxide = carbonDioxide;
    }

    public String getIllumination() {
        return illumination;
    }

    public void setIllumination(String illumination) {
        this.illumination = illumination;
    }
}
