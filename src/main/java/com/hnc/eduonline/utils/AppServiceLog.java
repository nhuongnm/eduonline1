/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hnc.eduonline.utils;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

/**
 *
 * @author nhuongnm
 */
@Aspect
public class AppServiceLog implements Serializable {

    private static LogHelper logger = new LogHelper(AppServiceLog.class);

    public AppServiceLog() {
    }

    public void logBeforeExecution(JoinPoint point) {
        logger.logInfo("BEFORE METHOD : " + point.getSignature().getName() + " CALL");
        String logQuery = "";
        logQuery = Arrays.toString(point.getArgs());
        logger.logInfo("body data : " + logQuery);
        logQuery = "";
        try {
            Object[] paramValues = point.getArgs();
            for (Object object : paramValues) {
                if (isWrapperType(object.getClass())) {
                    continue;
                }
                logQuery = logQuery + object.getClass().getName() + ":";
                for (Method method : object.getClass().getDeclaredMethods()) {
                    if (Modifier.isPublic(method.getModifiers())
                            && method.getParameterTypes().length == 0
                            && method.getReturnType() != void.class
                            && (method.getName().startsWith("get") || method.getName().startsWith("is"))) {
                        Object value = method.invoke(object);
                        if (value != null) {
                            logQuery = logQuery + method.getName() + "=" + value + ";";
                        }
                    }
                }
            }
            if (logQuery.length() > 0) {
                logger.logInfo("body data2 : " + logQuery);
            }
        } catch (Exception ex) {
            logger.logInfo("Exception : " + ex.getMessage());
        }
    }

    public void logAfterExecution(JoinPoint point) {
        logger.logInfo("AFTER METHOD : " + point.getSignature().getName() + " CALL");
        String logQuery = "";
        logQuery = Arrays.toString(point.getArgs());
        logger.logInfo("body data1 : " + logQuery);
        logQuery = "";
        try {
            Object[] paramValues = point.getArgs();
            for (Object object : paramValues) {
                logQuery = logQuery + object.getClass().getName() + ":";
                for (Method method : object.getClass().getDeclaredMethods()) {
                    if (Modifier.isPublic(method.getModifiers())
                            && method.getParameterTypes().length == 0
                            && method.getReturnType() != void.class
                            && (method.getName().startsWith("get") || method.getName().startsWith("is"))) {
                        Object value = method.invoke(object);
                        if (value != null) {
                            logQuery = logQuery + method.getName() + "=" + value + ";";
                        }
                    }
                }
            }
            logger.logInfo("body data : " + logQuery);
        } catch (Exception ex) {
            logger.logInfo("Exception : " + ex.getMessage());
        }
    }

    /**
     * This is the method which I would like to execute when any method returns.
     *
     * @param retVal
     */
    public void afterReturningAdvice(Object retVal) {
        if (retVal == null) {
            logger.logInfo("NULL RETURN");
            return;
        }
        try {
            logger.logInfo("RETURN VALUE");
            String logQuery = "";
            logQuery = retVal.toString();
            logger.logInfo("body return: " + logQuery);
            logQuery = "";
            if (retVal instanceof List<?>) {
                List<?> list = (List<?>) retVal;
                logQuery = "[";
                for (Object item : list) {
                    logQuery = logQuery + "{";
                    for (Method method : item.getClass().getDeclaredMethods()) {
                        if (Modifier.isPublic(method.getModifiers())
                                && method.getParameterTypes().length == 0
                                && method.getReturnType() != void.class
                                && (method.getName().startsWith("get") || method.getName().startsWith("is"))) {
                            Object value = method.invoke(item);
                            if (value != null) {
                                logQuery = logQuery + method.getName() + "=" + value + ",";
                            }
                        }
                    }
                    logQuery = logQuery.substring(0, logQuery.length() - 1);
                    if (logQuery.length() > 2) {
                        logQuery = logQuery + "},";
                    }
                }
                logQuery = logQuery.substring(0, logQuery.length() - 1);
                logQuery = logQuery + "]";
            } else if (retVal instanceof List) {
                List<?> list = (List<?>) retVal;
                logQuery = "[";
                for (Object item : list) {
                    logQuery = logQuery + "{";
                    logQuery = logQuery + item.toString();
                    if (logQuery.length() > 1) {
                        logQuery = logQuery + "},";
                    }
                    logQuery = logQuery.substring(0, logQuery.length() - 1);
                }
                logQuery = logQuery.substring(0, logQuery.length() - 1);
                logQuery = logQuery + "]";

            } else {
                //logQuery = retVal.toString();
                //logger.logInfo("body return1 : " + logQuery);
                //logQuery = "";
                for (Method method : retVal.getClass().getDeclaredMethods()) {
                    if (Modifier.isPublic(method.getModifiers())
                            && method.getParameterTypes().length == 0
                            && method.getReturnType() != void.class
                            && (method.getName().startsWith("get") || method.getName().startsWith("is"))) {
                        Object value = method.invoke(retVal);
                        if (value != null) {
                            logQuery = logQuery + method.getName() + "=" + value + ";";
                        }
                    }
                }
            }
            logger.logInfo("body returndetail: " + logQuery);

        } catch (Exception ex) {
            logger.logInfo("Exception: " + ex.getMessage());
        }
    }

    /**
     * This is the method which I would like to execute if there is an exception
     * raised.
     */
    public void AfterThrowingAdvice(Exception ex) {
        System.out.println("There has been an exception: " + ex.toString());
        logger.logInfo("log exception message: " + ex.getMessage());
        //logger.logInfo("log exception  : " + ex.toString());
        logger.logInfo("log exception  : " + Arrays.toString(ex.getStackTrace()));
    }

    private static final Set<Class<?>> WRAPPER_TYPES = getWrapperTypes();

    private boolean isWrapperType(Class<?> clazz) {
        return WRAPPER_TYPES.contains(clazz);
    }

    private static Set<Class<?>> getWrapperTypes() {
        Set<Class<?>> ret = new HashSet<Class<?>>();
        ret.add(Boolean.class);
        ret.add(Character.class);
        ret.add(Byte.class);
        ret.add(Short.class);
        ret.add(Integer.class);
        ret.add(Long.class);
        ret.add(Float.class);
        ret.add(Double.class);
        ret.add(Void.class);
        return ret;
    }

}
