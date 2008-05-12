class administrator {
  private $id;          //`ID_Admin` int(12) NOT NULL auto_increment,
  private $cognome;     //`Cognome` varchar(30) NOT NULL default '',
  private $nome;        //`Nome` varchar(30) NOT NULL default '',
  private $livello;     //`Livello` int(2) NOT NULL default '0',
  private $login;     //`Login` varchar(50) NOT NULL default '',
  private $password;     //`Password` varchar(8) NOT NULL default '',

  //CONSTRUCTORS
  public function __construct($inpId, $inpCognome, $inpNome, $inpLivello, $inpLogin, $inpPassword) {
    $this->id = $inpId;
    $this->cognome = $inpCognome;
    $this->nome = $inpNome;
    $this->livello = $inpLivello;
    $this->login = $inpLogin;
    $this->password = $inpPassword;
  }
  
  public function getId() { return $this->id; }
  public function setId($param) { $this->id = $param; }
  
  public function getCognome() { return $this->cognome; }
  public function setCognome($param) { $this->cognome = $param; }
  
  public function getNome() { return $this->nome; }
  public function setNome($param) { $this->nome = $param; }
  
  public function getLivello() { return $this->livello; }
  public function setLivello($param) { $this->livello = $param; }
  
  public function getLogin() { return $this->login; }
  public function setLogin($param) { $this->login = $param; }
  
  public function getPassword() { return $this->password; }
  public function setPassword($param) { $this->password = $param; }
}

