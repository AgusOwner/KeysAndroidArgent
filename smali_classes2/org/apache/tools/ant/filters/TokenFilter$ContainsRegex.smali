.class public Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;
.super Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;
.source "TokenFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/TokenFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContainsRegex"
.end annotation


# instance fields
.field private flags:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private initialized:Z

.field private options:I

.field private regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

.field private regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

.field private substitution:Lorg/apache/tools/ant/types/Substitution;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 505
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;-><init>()V

    const/4 v0, 0x0

    .line 510
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->initialized:Z

    const-string v0, ""

    .line 511
    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->flags:Ljava/lang/String;

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 538
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->flags:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/filters/TokenFilter;->convertRegexOptions(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->options:I

    .line 542
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->from:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 545
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

    .line 546
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    .line 548
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->to:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    .line 551
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/types/Substitution;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Substitution;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->substitution:Lorg/apache/tools/ant/types/Substitution;

    .line 552
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Substitution;->setExpression(Ljava/lang/String;)V

    return-void

    .line 543
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing from in containsregex"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 561
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->initialize()V

    .line 562
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    iget v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->options:I

    invoke-interface {v0, p1, v1}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->substitution:Lorg/apache/tools/ant/types/Substitution;

    if-nez v0, :cond_1

    return-object p1

    .line 568
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    .line 569
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Substitution;->getExpression(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->options:I

    .line 568
    invoke-interface {v1, p1, v0, v2}, Lorg/apache/tools/ant/util/regexp/Regexp;->substitute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setFlags(Ljava/lang/String;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->flags:Ljava/lang/String;

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->from:Ljava/lang/String;

    return-void
.end method

.method public setReplace(Ljava/lang/String;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsRegex;->to:Ljava/lang/String;

    return-void
.end method
