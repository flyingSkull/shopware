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
 * @subpackage Article
 * @copyright  Copyright (c) 2012, shopware AG (http://www.shopware.de)
 * @version    $Id$
 * @author     $Author$
 */

namespace Shopware\Models\Article;
use Shopware\Components\Model\ModelEntity,
    Doctrine\ORM\Mapping AS ORM,
    Symfony\Component\Validator\Constraints as Assert,
    Doctrine\Common\Collections\ArrayCollection;

/**
 * todo@all: Documentation
 *
 * @ORM\Entity(repositoryClass="Repository")
 * @ORM\Table(name="s_articles_prices")
 */
class Price extends ModelEntity
{
    /**
     * @var integer $id
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;
    /**
     * @var integer $articleId
     * @ORM\Column(name="articleID", type="integer", nullable=false)
     */
    private $articleId;

    /**
     * @var integer $articleDetailsId
     * @ORM\Column(name="articledetailsID", type="integer", nullable=false)
     */
    private $articleDetailsId;

    /**
     * @var string $customerGroupKey
     * @ORM\Column(name="pricegroup", type="string", length=30, nullable=false)
     */
    private $customerGroupKey = '';

    /**
     * @var integer $from
     *
     * @ORM\Column(name="`from`", type="integer", nullable=false)
     */
    private $from;

    /**
     * @var integer $to
     *
     * @ORM\Column(name="`to`", type="string", nullable=true)
     */
    private $to = 'beliebig';

    /**
     * @var float $price
     *
     * @ORM\Column(name="price", type="float", nullable=false)
     */
    private $price = 0;

    /**
     * @var float $pseudoPrice
     *
     * @ORM\Column(name="pseudoprice", type="float", nullable=false)
     */
    private $pseudoPrice = 0;

    /**
     * @var float $basePrice
     *
     * @ORM\Column(name="baseprice", type="float", nullable=false)
     */
    private $basePrice = 0;

    /**
     * @var float $percent
     *
     * @ORM\Column(name="percent", type="float", nullable=false)
     */
    private $percent = 0;

    /**
     * OWNING SIDE
     * @var \Shopware\Models\Article\Detail
     * @ORM\ManyToOne(targetEntity="Shopware\Models\Article\Detail", inversedBy="prices")
     * @ORM\JoinColumn(name="articledetailsID", referencedColumnName="id")
     * @ORM\OrderBy({"customerGroupKey" = "ASC", "from" = "ASC"})
     */
    protected $detail;

    /**
     * @var \Shopware\Models\Customer\Group $customerGroup
     *
     * @ORM\OneToOne(targetEntity="\Shopware\Models\Customer\Group")
     * @ORM\JoinColumn(name="pricegroup", referencedColumnName="groupkey")
     */
    private $customerGroup;

    /**
     * INVERSE SIDE
     * @ORM\OneToOne(targetEntity="Shopware\Models\Attribute\ArticlePrice", mappedBy="articlePrice", cascade={"persist", "update"})
     * @var \Shopware\Models\Attribute\ArticlePrice
     */
    protected $attribute;

    /**
     * OWNING SIDE
     * @ORM\OneToOne(targetEntity="Shopware\Models\Article\Article")
     * @ORM\JoinColumn(name="articleID", referencedColumnName="id")
     * @var \Shopware\Models\Article\Article
     */
    protected $article;

    /**
     * @return \Shopware\Models\Article\Article
     */
    public function getArticle()
    {
        return $this->article;
    }

    /**
     * @param \Shopware\Models\Article\Article|array|null $article
     * @return \Shopware\Models\Article\Price
     */
    public function setArticle($article)
    {
        $this->article = $article;
        return $this;
    }

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set priceGroup
     *
     * @param \Shopware\Models\Customer\Group $customerGroup
     * @return Price
     */
    public function setCustomerGroup($customerGroup)
    {
        $this->customerGroup = $customerGroup;
        return $this;
    }

    /**
     * Get priceGroup
     *
     * @return \Shopware\Models\Customer\Group
     */
    public function getCustomerGroup()
    {
        return $this->customerGroup;
    }

    /**
     * Set priceGroup
     *
     * @param string $priceGroup
     * @return Price
     */
    public function setPriceGroup($priceGroup)
    {
        $this->priceGroup = $priceGroup;
        return $this;
    }

    /**
     * Get priceGroup
     *
     * @return string
     */
    public function getPriceGroup()
    {
        return $this->priceGroup;
    }

    /**
     * Set from
     *
     * @param integer $from
     * @return Price
     */
    public function setFrom($from)
    {
        $this->from = $from;
        return $this;
    }

    /**
     * Get from
     *
     * @return integer
     */
    public function getFrom()
    {
        return $this->from;
    }

    /**
     * Set to
     *
     * @param int|null $to
     * @return Price
     */
    public function setTo($to)
    {
        if ($to === null) {
            $to = 'beliebig';
        }
        $this->to = $to;
        return $this;
    }

    /**
     * Get to
     *
     * @return integer|null
     */
    public function getTo()
    {
        return $this->to < 0 ? null : $this->to;
    }

    /**
     * Set article detail id
     *
     * @param Detail $detail
     * @return Price
     */
    public function setDetail($detail)
    {
        $this->detail = $detail;
        return $this;
    }

    /**
     * Get article detail id
     *
     * @return Detail
     */
    public function getDetail()
    {
        return $this->detail;
    }

    /**
     * Set price
     *
     * @param float $price
     * @return Price
     */
    public function setPrice($price)
    {
        $this->price = $price;
        return $this;
    }

    /**
     * Get price
     *
     * @return float
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * Set pseudoPrice
     *
     * @param float $pseudoPrice
     * @return Price
     */
    public function setPseudoPrice($pseudoPrice)
    {
        $this->pseudoPrice = $pseudoPrice;
        return $this;
    }

    /**
     * Get pseudoPrice
     *
     * @return float
     */
    public function getPseudoPrice()
    {
        return $this->pseudoPrice;
    }

    /**
     * Set basePrice
     *
     * @param float $basePrice
     * @return Price
     */
    public function setBasePrice($basePrice)
    {
        $this->basePrice = $basePrice;
        return $this;
    }

    /**
     * Get basePrice
     *
     * @return float
     */
    public function getBasePrice()
    {
        return $this->basePrice;
    }

    /**
     * Set percent
     *
     * @param float $percent
     * @return Price
     */
    public function setPercent($percent)
    {
        $this->percent = $percent;
        return $this;
    }

    /**
     * Get percent
     *
     * @return float
     */
    public function getPercent()
    {
        return $this->percent;
    }

    /**
     * @return \Shopware\Models\Attribute\ArticlePrice
     */
    public function getAttribute()
    {
        return $this->attribute;
    }

    /**
     * @param \Shopware\Models\Attribute\ArticlePrice|array|null $attribute
     * @return \Shopware\Components\Model\ModelEntity
     */
    public function setAttribute($attribute)
    {
        return $this->setOneToOne($attribute, '\Shopware\Models\Attribute\ArticlePrice', 'attribute', 'articlePrice');
    }
}
