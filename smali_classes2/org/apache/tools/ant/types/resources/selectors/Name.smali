.class public Lorg/apache/tools/ant/types/resources/selectors/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# instance fields
.field private cs:Z

.field private expression:Lorg/apache/tools/ant/util/regexp/Regexp;

.field private handleDirSep:Z

.field private pattern:Ljava/lang/String;

.field private project:Lorg/apache/tools/ant/Project;

.field private reg:Lorg/apache/tools/ant/types/RegularExpression;

.field private regex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->regex:Ljava/lang/String;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->cs:Z

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->handleDirSep:Z

    return-void
.end method

.method private matches(Ljava/lang/String;)Z
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/selectors/Name;->modify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/Name;->modify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->cs:Z

    invoke-static {v0, p1, v1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Lorg/apache/tools/ant/types/RegularExpression;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/RegularExpression;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    .line 138
    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->regex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RegularExpression;->setPattern(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    iget-object v1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/RegularExpression;->getRegexp(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/util/regexp/Regexp;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->expression:Lorg/apache/tools/ant/util/regexp/Regexp;

    .line 141
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->expression:Lorg/apache/tools/ant/util/regexp/Regexp;

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/Name;->modify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->cs:Z

    invoke-static {v1}, Lorg/apache/tools/ant/util/regexp/RegexpUtil;->asOptions(Z)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/apache/tools/ant/util/regexp/Regexp;->matches(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method private modify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 145
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->handleDirSep:Z

    if-eqz v0, :cond_1

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 148
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public doesHandledirSep()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->handleDirSep:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getRegex()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->regex:Ljava/lang/String;

    return-object v0
.end method

.method public isCaseSensitive()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->cs:Z

    return v0
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 3

    .line 124
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/resources/selectors/Name;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 128
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/selectors/Name;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->cs:Z

    return-void
.end method

.method public setHandleDirSep(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->handleDirSep:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->pattern:Ljava/lang/String;

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method public setRegex(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->regex:Ljava/lang/String;

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/selectors/Name;->reg:Lorg/apache/tools/ant/types/RegularExpression;

    return-void
.end method
