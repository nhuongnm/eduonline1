
package com.hnc.eduonline.utils;
import java.io.InputStream;
import java.net.URL;
import java.util.Properties;
import org.apache.log4j.PropertyConfigurator;


/**
 * Simple wrapper around Logger to provide logging EGWException feature for other classes.
 */
public class LogHelper {
    /**
     * the Logger instance
     */
    private Logger logger = null;

    private LogHelper() {
    }

    /**
     * Constructor for LogHelper
     * Get an instance of Logger for specified class.
     *
     * @param clazz the class that requires an instance of Logger
     */
    public LogHelper(Class clazz) {
        //Properties prop = new Properties();
      //  InputStream input = null;
        //input = clazz.getResourceAsStream("/config.properties");
        URL url = clazz.getResource("/log4j.properties");
        PropertyConfigurator.configure(url.getPath());
        //PropertyConfigurator.configure(input);
        this.logger = Logger.getLogger(clazz);
    }

    /**
     * Log a message with stack trace of Exception at ERROR level.
     *
     * @param exception a Exception to log stack trace
     */
    public void logError(IException exception) {
        if (exception.getThrowable() != null) {
            logger.error(exception.getLocationMessage(), exception.getThrowable());
        } else {
            logger.error(exception.getLocationMessage());
        }
    }

    /**
     * Log a message at ERROR level.
     *
     * @param description message object to be logged
     */
    public void logError(String description) {
        logger.error(description);
    }

    /**
     * Log a message with stack trace of Exception at DEBUG level.
     *
     * @param exception a Exception to log stack trace
     */
    public void logDebug(IException exception) {
        if (exception.getThrowable() != null) {
            logger.debug(exception.getLocationMessage(), exception.getThrowable());
        } else {
            logger.debug(exception.getLocationMessage());
        }
    }

    /**
     * Log a message at DEBUG level.
     *
     * @param description message object to be logged
     */
    public void logDebug(String description) {
        logger.debug(description);
    }

    /**
     * Log a message with stack trace of Exception at INFO level.
     *
     * @param exception a Exception to log stack trace
     */
    public void logInfo(IException exception) {
        if (exception.getThrowable() != null) {
            logger.info(exception.getLocationMessage(), exception.getThrowable());
        } else {
            logger.info(exception.getLocationMessage());
        }
    }

    /**
     * Log a message at INFO level.
     *
     * @param description message object to be logged
     */
    public void logInfo(String description) {
        logger.info(description);
    }

    /**
     * Log a message with stack trace of Exception at WARNING level.
     *
     * @param exception a Exception to log stack trace
     */
    public void logWarn(IException exception) {
        if (exception.getThrowable() != null) {
            logger.warn(exception.getLocationMessage(), exception.getThrowable());
        } else {
            logger.warn(exception.getLocationMessage());
        }
    }

    /**
     * Log a message at WARNING level.
     *
     * @param description message object to be logged
     */
    public void logWarn(String description) {
        logger.warn(description);
    }

    /**
     * Log a message with stack trace of Exception at FATAL level.
     *
     * @param exception a Exception to log stack trace
     */
    public void logFatal(IException exception) {
        if (exception.getThrowable() != null) {
            logger.fatal(exception.getLocationMessage(), exception.getThrowable());
        } else {
            logger.fatal(exception.getLocationMessage());
        }
    }

    /**
     * Log a message at FATAL level.
     *
     * @param description message object to be logged
     */
    public void logFatal(String description) {
        logger.fatal(description);
    }

}
