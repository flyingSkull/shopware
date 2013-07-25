<?php
/// \cond
/**
 * A basic implementation of logging mechanism intended for debugging
 *
 * Copyright (c) 2012 SOFORT AG
 * 
 * Released under the GNU General Public License (Version 2)
 * [http://www.gnu.org/licenses/gpl-2.0.html]
 *
 * $Date: 2013-02-27 09:03:55 +0100 (Wed, 27 Feb 2013) $
 * @version SofortLib 1.5.4  $Id: sofortLib_Logger.inc.php 6023 2013-02-27 08:03:55Z dehn $
 * @author SOFORT AG http://www.sofort.com (integration@sofort.com)
 *
 */
class SofortLibLogger {
	
	public $fp = null;
	
	public $maxFilesize = 1048576;
	
	
	/**
	 * 
	 * Constructor left empty
	 */
	public function SofortLibLogger() {
		// intentionally left empty
	}
	
	
	/**
	 * Logs $msg to a file which path is being set by it's unified ressource locator
	 * @param String $message
	 * @param URI $uri
	 */
	public function log($message, $uri) {
		if ($this->logRotate($uri)) {
			$this->fp = fopen($uri, 'w');
			fclose($this->fp);
		}
		
		$this->fp = fopen($uri, 'a');
		fwrite($this->fp, '['.date('Y-m-d H:i:s').'] '.$message."\n");
		fclose($this->fp);
	}
	
	
	/**
	 * Copy the content of the logfile to a backup file if file size got too large
	 * Put the old log file into a tarball for later reference
	 * @param URI $uri
	 */
	public function logRotate($uri) {
		$date = date('Y-m-d_h-i-s', time());
		
		if (file_exists($uri)) {
			if ($this->fp != null && filesize($uri) != false && filesize($uri) >= $this->maxFilesize) {
				$oldUri = $uri;
				// file ending
				$ending = $ext = pathinfo($oldUri, PATHINFO_EXTENSION);
				$newUri = dirname($oldUri).'/log_'.$date.'.'.$ending;
				rename($oldUri, $newUri);
				
				if (file_exists($oldUri)) {
					unlink($oldUri);
				}
				
				return true;
			}
		}
		
		return false;
	}
}
/// \endcond
?>