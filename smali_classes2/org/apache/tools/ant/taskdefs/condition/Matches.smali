.class public Lorg/apache/tools/ant/taskdefs/condition/Matches;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Matches.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private caseSensitive:Z

.field private multiLine:Z

.field private regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

.field private singleLine:Z

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->caseSensitive:Z

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->multiLine:Z

    .line 36
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->singleLine:Z

    return-void
.end method


# virtual methods
.method public addRegexp(Lorg/apache/tools/ant/types/RegularExpression;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

    if-nez v0, :cond_0

    .line 74
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

    return-void

    .line 71
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one regular expression is allowed."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public eval()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->string:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

    if-eqz v0, :cond_0

    .line 115
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->caseSensitive:Z

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->multiLine:Z

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->singleLine:Z

    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(ZZZ)I

    move-result v0

    .line 116
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/Matches;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->string:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 113
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Missing pattern in matches."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Parameter string is required in matches."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCasesensitive(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->caseSensitive:Z

    return-void
.end method

.method public setMultiline(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->multiLine:Z

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->regularExpression:Lorg/apache/tools/ant/types/RegularExpression;

    .line 59
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    return-void

    .line 55
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only one regular expression is allowed."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->singleLine:Z

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/Matches;->string:Ljava/lang/String;

    return-void
.end method
