package org.alexdev.havana.util.config;

import org.apache.logging.log4j.core.config.Configurator;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class LoggingConfiguration {
    /**
     * Create the configuration files for this application, with the default values. Will throw an
     * exception if it could not create such files.
     *
     * @throws FileNotFoundException the exception if an error happens
     */
    public static void checkLoggingConfig() throws FileNotFoundException {
        String output = """
                status = error
                name = HavanaServerConfig

                # Console appender
                appender.console.type = Console
                appender.console.name = stdout
                appender.console.target = SYSTEM_OUT
                appender.console.layout.type = PatternLayout
                appender.console.layout.pattern = %d{yyyy-MM-dd'T'HH:mm:ss.SSS} %-5p [%c] - %m%n

                # Error console appender
                appender.error.type = Console
                appender.error.name = stderr
                appender.error.target = SYSTEM_ERR
                appender.error.layout.type = PatternLayout
                appender.error.layout.pattern = %d{yyyy-MM-dd'T'HH:mm:ss.SSS} %-5p [%c] - %m%n

                # Server log file appender
                appender.serverlog.type = File
                appender.serverlog.name = SERVER_LOG
                appender.serverlog.fileName = server.log
                appender.serverlog.append = true
                appender.serverlog.immediateFlush = true
                appender.serverlog.layout.type = PatternLayout
                appender.serverlog.layout.pattern = %d{yyyy-MM-dd'T'HH:mm:ss.SSS} - [%c] - %m%n

                # Error log file appender
                appender.errorfile.type = File
                appender.errorfile.name = ERROR_FILE
                appender.errorfile.fileName = error.log
                appender.errorfile.append = true
                appender.errorfile.immediateFlush = true
                appender.errorfile.layout.type = PatternLayout
                appender.errorfile.layout.pattern = %d{yyyy-MM-dd'T'HH:mm:ss.SSS} - [%c] - %m%n

                # Error logger
                logger.error.name = ErrorLogger
                logger.error.level = error
                logger.error.additivity = false
                logger.error.appenderRef.stderr.ref = stderr
                logger.error.appenderRef.errorfile.ref = ERROR_FILE

                # Root logger
                rootLogger.level = info
                rootLogger.appenderRef.stdout.ref = stdout
                rootLogger.appenderRef.serverlog.ref = SERVER_LOG
                """;

        File loggingConfig = new File("log4j2.properties");

        if (!loggingConfig.exists()) {
            PrintWriter writer = new PrintWriter(loggingConfig.getAbsoluteFile());
            writer.write(output);
            writer.flush();
            writer.close();
        }

        // Configure Log4j 2 with the properties file
        Configurator.initialize(null, loggingConfig.getAbsolutePath());
    }
}
