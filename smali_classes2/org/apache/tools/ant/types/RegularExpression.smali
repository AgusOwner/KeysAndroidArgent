.class public Lorg/apache/tools/ant/types/RegularExpression;
.super Lorg/apache/tools/ant/types/DataType;
.source "RegularExpression.java"


# static fields
.field public static final DATA_TYPE_NAME:Ljava/lang/String; = "regexp"

.field private static final FACTORY:Lorg/apache/tools/ant/util/regexp/RegexpFactory;


# instance fields
.field private alreadyInit:Z

.field private myPattern:Ljava/lang/String;

.field private regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

.field private setPatternPending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lorg/apache/tools/ant/util/regexp/RegexpFactory;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/regexp/RegexpFactory;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/types/RegularExpression;->FACTORY:Lorg/apache/tools/ant/util/regexp/RegexpFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/RegularExpression;->alreadyInit:Z

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lorg/apache/tools/ant/types/RegularExpression;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    .line 70
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/RegularExpression;->setPatternPending:Z

    return-void
.end method

.method private init(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RegularExpression;->alreadyInit:Z

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lorg/apache/tools/ant/types/RegularExpression;->FACTORY:Lorg/apache/tools/ant/util/regexp/RegexpFactory;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/regexp/RegexpFactory;->newRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/RegularExpression;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/RegularExpression;->alreadyInit:Z

    :cond_0
    return-void
.end method

.method private setPattern()V
    .locals 2

    .line 79
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/RegularExpression;->setPatternPending:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/apache/tools/ant/types/RegularExpression;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    iget-object v1, p0, Lorg/apache/tools/ant/types/RegularExpression;->myPattern:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/util/regexp/Regexp;->setPattern(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/RegularExpression;->setPatternPending:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getPattern(Lorg/apache/tools/ant/Project;)Ljava/lang/String;
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/RegularExpression;->init(Lorg/apache/tools/ant/Project;)V

    .line 105
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RegularExpression;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/RegularExpression;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/RegularExpression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/RegularExpression;->getPattern(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 108
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern()V

    .line 109
    iget-object p1, p0, Lorg/apache/tools/ant/types/RegularExpression;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    invoke-interface {p1}, Lorg/apache/tools/ant/util/regexp/Regexp;->getPattern()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/RegularExpression;
    .locals 2

    .line 133
    const-class v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RegularExpression;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/types/RegularExpression;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/RegularExpression;

    return-object p1
.end method

.method public getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;
    .locals 1

    .line 118
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/RegularExpression;->init(Lorg/apache/tools/ant/Project;)V

    .line 119
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/RegularExpression;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/RegularExpression;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/RegularExpression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object p1

    return-object p1

    .line 122
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern()V

    .line 123
    iget-object p1, p0, Lorg/apache/tools/ant/types/RegularExpression;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    return-object p1
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/types/RegularExpression;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lorg/apache/tools/ant/types/RegularExpression;->myPattern:Ljava/lang/String;

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/RegularExpression;->setPatternPending:Z

    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/tools/ant/util/regexp/Regexp;->setPattern(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
