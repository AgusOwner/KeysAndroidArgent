.class public Lorg/apache/tools/ant/PathTokenizer;
.super Ljava/lang/Object;
.source "PathTokenizer.java"


# instance fields
.field private dosStyleFilesystem:Z

.field private lookahead:Ljava/lang/String;

.field private onNetWare:Z

.field private tokenizer:Ljava/util/StringTokenizer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    const-string v0, "netware"

    .line 51
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/PathTokenizer;->onNetWare:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ":;"

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1, v3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    .line 74
    :goto_0
    sget-char p1, Ljava/io/File;->pathSeparatorChar:C

    const/16 v0, 0x3b

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/apache/tools/ant/PathTokenizer;->dosStyleFilesystem:Z

    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/PathTokenizer;->onNetWare:Z

    const-string v2, "/"

    const-string v3, "\\"

    const-string v4, ":"

    if-nez v1, :cond_3

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/apache/tools/ant/PathTokenizer;->dosStyleFilesystem:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    .line 109
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 112
    iget-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    iput-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    goto/16 :goto_2

    .line 117
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 126
    :cond_3
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_5
    iget-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 133
    iget-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 136
    sget-object v5, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 137
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "."

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ".."

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 142
    iget-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->tokenizer:Ljava/util/StringTokenizer;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 143
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 146
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    iput-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    goto :goto_2

    .line 154
    :cond_7
    iput-object v1, p0, Lorg/apache/tools/ant/PathTokenizer;->lookahead:Ljava/lang/String;

    :cond_8
    :goto_2
    return-object v0
.end method
