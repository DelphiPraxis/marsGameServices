unit Data.ORM.Scores;

interface

uses
  Spring.Persistence.Mapping.Attributes,
  Spring.Persistence.Core.Graphics,
  Spring;

type
  [Entity]
  [Table('SCORES', '')]
  TScore = class
  private
    FID: Int64;
    FUSERNAME: string;
    FSCORE: Int64;
    FDIFFICULTY: Integer;
  public
    [Column('ID',[cpRequired,cpPrimaryKey,cpNotNull],18,0)]
    property ID: Int64 read FID write FID;
    [Column('USERNAME',[cpRequired,cpNotNull],255)]
    property USERNAME: string read FUSERNAME write FUSERNAME;
    [Column('SCORE',[cpRequired,cpNotNull],18,0)]
    property SCORE: Int64 read FSCORE write FSCORE;
    [Column('DIFFICULTY',[cpRequired,cpNotNull],10,0)]
    property DIFFICULTY: Integer read FDIFFICULTY write FDIFFICULTY;
  end;

implementation


end.