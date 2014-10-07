package pl.adamborowski.kaskjee;

/**
 * Created by adam on 08.10.14.
 */

import lombok.Getter;
import lombok.Setter;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

public class Paragraph extends SimpleTagSupport {
    StringWriter sw = new StringWriter();
    @Setter
    @Getter
    String caption;
    @Setter
    @Getter
    String aligment = "justify";
    @Setter
    @Getter
    String color = "#cccccc";

    public void doTag()
            throws JspException, IOException {
        sw.append("<article class=\"notice bg-gray padding20 margin10 marker-on-top a-para\"><h3>")
                .append(getCaption())
                .append("</h3><p style=\"text-align:").append(aligment).append("; color: ").append(color).append("\">");
        getJspBody().invoke(sw);
        sw.append("</p></article>");
        getJspContext().getOut().println(sw.toString());
    }
}