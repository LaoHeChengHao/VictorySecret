package WEBUtils;

import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

public class ParameterUtiles {

    //动态获取request.getParameter()属性方法
        public static <T>T param2Bean(HttpServletRequest req, T t) {
            Map<String, String> map = new HashMap<String,String>();
            try {
                BeanUtils.populate(t,req.getParameterMap());
            } catch (Exception e) {
                e.printStackTrace();
            }

            return t;

        }

}
