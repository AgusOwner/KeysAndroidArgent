.class public Lorg/apache/tools/ant/util/LineTokenizer;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "LineTokenizer.java"

# interfaces
.implements Lorg/apache/tools/ant/util/Tokenizer;


# static fields
.field private static final NOT_A_CHAR:I = -0x2


# instance fields
.field private includeDelims:Z

.field private lineEnd:Ljava/lang/String;

.field private pushed:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    const/4 v0, -0x2

    .line 34
    iput v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->pushed:I

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->includeDelims:Z

    return-void
.end method


# virtual methods
.method public getPostToken()Ljava/lang/String;
    .locals 1

    .line 109
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->includeDelims:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getToken(Ljava/io/Reader;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->pushed:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_0

    .line 62
    :cond_0
    iput v1, p0, Lorg/apache/tools/ant/util/LineTokenizer;->pushed:I

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const-string v2, ""

    .line 68
    iput-object v2, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    const-string v5, "\r"

    const/4 v6, 0x1

    if-eq v0, v1, :cond_6

    const/16 v7, 0xa

    if-nez v4, :cond_4

    const/16 v8, 0xd

    if-ne v0, v8, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    if-ne v0, v7, :cond_3

    const-string p1, "\n"

    .line 77
    iput-object p1, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    goto :goto_3

    :cond_3
    int-to-char v0, v0

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    :goto_2
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_1

    :cond_4
    if-ne v0, v7, :cond_5

    const-string p1, "\r\n"

    .line 85
    iput-object p1, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    goto :goto_4

    .line 87
    :cond_5
    iput v0, p0, Lorg/apache/tools/ant/util/LineTokenizer;->pushed:I

    .line 88
    iput-object v5, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    goto :goto_4

    :cond_6
    :goto_3
    move v3, v4

    :goto_4
    if-ne v0, v1, :cond_7

    if-ne v3, v6, :cond_7

    .line 95
    iput-object v5, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    .line 98
    :cond_7
    iget-boolean p1, p0, Lorg/apache/tools/ant/util/LineTokenizer;->includeDelims:Z

    if-eqz p1, :cond_8

    .line 99
    iget-object p1, p0, Lorg/apache/tools/ant/util/LineTokenizer;->lineEnd:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setIncludeDelims(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/LineTokenizer;->includeDelims:Z

    return-void
.end method
