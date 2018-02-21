package bean;

public enum ResultEnum {

    TEMPERATURE("温度","temperature"),

    CARBON_DIOXIDE("二氧化碳","carbonDioxide"),

    ILLUMINATION("光照","illumination");

    /**
     * 描述
     */
    private String description;

    /**
     * 值
     */
    private String value;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    ResultEnum(String description, String value) {
        this.description = description;
        this.value = value;
    }
}
