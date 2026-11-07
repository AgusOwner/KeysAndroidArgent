.class public Lorg/apache/tools/ant/util/StringTokenizer;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "StringTokenizer.java"

# interfaces
.implements Lorg/apache/tools/ant/util/Tokenizer;


# static fields
.field private static final NOT_A_CHAR:I = -0x2


# instance fields
.field private delims:[C

.field private delimsAreTokens:Z

.field private includeDelims:Z

.field private intraString:Ljava/lang/String;

.field private pushed:I

.field private suppressDelims:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->intraString:Ljava/lang/String;

    const/4 v0, -0x2

    .line 37
    iput v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->pushed:I

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->delims:[C

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->delimsAreTokens:Z

    .line 40
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->suppressDelims:Z

    .line 41
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->includeDelims:Z

    return-void
.end method

.method private isDelim(C)Z
    .locals 5

    .line 143
    iget-object v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->delims:[C

    if-nez v0, :cond_0

    .line 144
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    return p1

    .line 146
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-char v4, v0, v3

    if-ne v4, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method public getPostToken()Ljava/lang/String;
    .locals 1

    .line 139
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->suppressDelims:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->includeDelims:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->intraString:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public getToken(Ljava/io/Reader;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->pushed:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 90
    iput v1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->pushed:I

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const-string v2, ""

    .line 98
    iput-object v2, p0, Lorg/apache/tools/ant/util/StringTokenizer;->intraString:Ljava/lang/String;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    :goto_1
    if-eq v0, v1, :cond_7

    int-to-char v5, v0

    .line 103
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/util/StringTokenizer;->isDelim(C)Z

    move-result v6

    if-eqz v4, :cond_5

    if-eqz v6, :cond_4

    .line 106
    iget-boolean v4, p0, Lorg/apache/tools/ant/util/StringTokenizer;->delimsAreTokens:Z

    if-eqz v4, :cond_3

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 108
    iput v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->pushed:I

    goto :goto_3

    .line 110
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 114
    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v4, v0

    goto :goto_2

    .line 117
    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    .line 120
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    :goto_2
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_1

    .line 122
    :cond_6
    iput v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->pushed:I

    .line 127
    :cond_7
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->intraString:Ljava/lang/String;

    .line 128
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/StringTokenizer;->includeDelims:Z

    if-eqz v0, :cond_8

    .line 129
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setDelims(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-static {p1}, Lorg/apache/tools/ant/util/StringUtils;->resolveBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->delims:[C

    return-void
.end method

.method public setDelimsAreTokens(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->delimsAreTokens:Z

    return-void
.end method

.method public setIncludeDelims(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->includeDelims:Z

    return-void
.end method

.method public setSuppressDelims(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/StringTokenizer;->suppressDelims:Z

    return-void
.end method
