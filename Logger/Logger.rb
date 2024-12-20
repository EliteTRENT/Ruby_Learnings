require 'logger'

logger = Logger.new('./Logger/file.log')
logger.level = Logger::WARN

logger.debug("This is a DEBUG message")
logger.info("This is an INFO message")
logger.warn("WARNING")
logger.error("This is an error message")
logger.fatal("This is a fatal message")