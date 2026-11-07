.class public Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;
.super Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;
.source "TokenFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/TokenFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplaceRegex"
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

    .line 437
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;-><init>()V

    const/4 v0, 0x0

    .line 442
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->initialized:Z

    const-string v0, ""

    .line 443
    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->flags:Ljava/lang/String;

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 470
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->flags:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/filters/TokenFilter;->convertRegexOptions(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->options:I

    .line 474
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->from:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 477
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

    .line 478
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    .line 480
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->to:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 481
    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->to:Ljava/lang/String;

    .line 483
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/types/Substitution;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Substitution;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->substitution:Lorg/apache/tools/ant/types/Substitution;

    .line 484
    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Substitution;->setExpression(Ljava/lang/String;)V

    return-void

    .line 475
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing pattern in replaceregex"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 492
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->initialize()V

    .line 494
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    iget v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->options:I

    invoke-interface {v0, p1, v1}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 497
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->regexp:Lorg/apache/tools/ant/util/regexp/Regexp;

    iget-object v1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->substitution:Lorg/apache/tools/ant/types/Substitution;

    .line 498
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Substitution;->getExpression(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->options:I

    .line 497
    invoke-interface {v0, p1, v1, v2}, Lorg/apache/tools/ant/util/regexp/Regexp;->substitute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setFlags(Ljava/lang/String;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->flags:Ljava/lang/String;

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->from:Ljava/lang/String;

    return-void
.end method

.method public setReplace(Ljava/lang/String;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ReplaceRegex;->to:Ljava/lang/String;

    return-void
.end method
