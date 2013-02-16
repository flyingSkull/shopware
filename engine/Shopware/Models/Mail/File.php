<?php
/**
 * Shopware 4.0
 * Copyright © 2012 shopware AG
 *
 * According to our dual licensing model, this program can be used either
 * under the terms of the GNU Affero General Public License, version 3,
 * or under a proprietary license.
 *
 * The texts of the GNU Affero General Public License with an additional
 * permission and of our proprietary license can be found at and
 * in the LICENSE file you have received along with this program.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * "Shopware" is a registered trademark of shopware AG.
 * The licensing of the program under the AGPLv3 does not imply a
 * trademark license. Therefore any rights, title and interest in
 * our trademarks remain entirely with us.
 *
 * @category   Shopware
 * @package    Shopware_Models
 * @subpackage Mail
 * @copyright  Copyright (c) 2012, shopware AG (http://www.shopware.de)
 * @version    $Id$
 * @author     $Author$
 * @author     Benjamin Cremer
 */

namespace   Shopware\Models\Mail;
use         Shopware\Components\Model\ModelEntity,
            Doctrine\ORM\Mapping AS ORM;

/**
 * Abstract class to provide proxy methods to the media-model
 *
 * @ORM\MappedSuperclass
 */
abstract class File extends ModelEntity
{
    /**
     * @var integer $id
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    protected $id;

    /**
     * The role property is the owning side of the association between attachment and media.
     *
     * @var \Shopware\Models\Media\Media
     * @ORM\ManyToOne(targetEntity="\Shopware\Models\Media\Media", fetch="EAGER")
     * @ORM\JoinColumn(name="mediaID", referencedColumnName="id")
     */
    protected $media;

    /**
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }
    /**
     * @return \Shopware\Models\Media\Media
     */
    public function getMedia()
    {
        return $this->media;
    }

    /**
     * Returns the creation date of the media.
     * @return \DateTime
     */
    public function getCreated()
    {
        return $this->getMedia()->getCreated();
    }

    /**
     * Returns the id of the user, who uploaded the file.
     * @return integer
     */
    public function getUserId()
    {
        return $this->getMedia()->getUserId();
    }

    /**
     * Returns the file extension.
     * @return string
     */
    public function getExtension()
    {
        return $this->getMedia()->getExtension();
    }

    /**
     * Returns the media type.
     * @return string
     */
    public function getType()
    {
        return $this->getMedia()->getType();
    }

    /**
     * Returns the file path of the media
     * @return string
     */
    public function getPath()
    {
        return $this->getMedia()->getPath();
    }

    /**
     * Returns the converted file name.
     * @return bool|string
     */
    public function getFileName()
    {
        return $this->getMedia()->getFileName();
    }

    /**
     * Returns the media description.
     * @return string
     */
    public function getDescription()
    {
        return $this->getMedia()->getDescription();
    }

    /**
     * Returns the id of the assigned album.
     *
     * @return integer
     */
    public function getAlbumId()
    {
        return $this->getMedia()->getAlbumId();
    }

    /**
     * Returns the name of the media, also used as file name
     * @return string
     */
    public function getName()
    {
        return $this->getMedia()->getName();
    }

    /**
     * Returns the memory size of the file.
     * @return float
     */
    public function getFileSize()
    {
        return $this->getMedia()->getFileSize();
    }

    /**
     * Returns the memory size of the file.
     * @return float
     */
    public function getFormattedFileSize()
    {
        return $this->getMedia()->getFormattedFileSize();
    }
}
