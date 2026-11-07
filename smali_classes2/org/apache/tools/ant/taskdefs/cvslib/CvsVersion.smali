.class public Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;
.super Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;
.source "CvsVersion.java"


# static fields
.field static final MULTIPLY:J = 0x64L

.field static final VERSION_1_11_2:J = 0x2b5eL


# instance fields
.field private clientVersion:Ljava/lang/String;

.field private clientVersionProperty:Ljava/lang/String;

.field private serverVersion:Ljava/lang/String;

.field private serverVersionProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 10

    .line 118
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setOutputStream(Ljava/io/OutputStream;)V

    .line 120
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setErrorStream(Ljava/io/OutputStream;)V

    const-string v1, "version"

    .line 122
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setCommand(Ljava/lang/String;)V

    .line 123
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->execute()V

    .line 124
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received version response \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->log(Ljava/lang/String;I)V

    .line 127
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v0

    move v5, v3

    move v6, v5

    move-object v4, v2

    move-object v7, v4

    :goto_0
    if-nez v3, :cond_3

    .line 133
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersionProperty:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersionProperty:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersionProperty:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersionProperty:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    move-object v3, v4

    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v8, "Client:"

    .line 136
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    move v5, v9

    goto :goto_3

    :cond_5
    const-string v8, "Server:"

    .line 138
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v6, v9

    goto :goto_3

    :cond_6
    const-string v8, "(CVS"

    .line 140
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, ")"

    .line 141
    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 142
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_7

    const-string v7, ""

    goto :goto_3

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_8
    :goto_3
    if-nez v5, :cond_9

    if-nez v6, :cond_9

    if-eqz v7, :cond_9

    if-nez v4, :cond_9

    .line 145
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 146
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    move v3, v9

    goto/16 :goto_0

    :cond_9
    if-eqz v5, :cond_b

    if-eqz v7, :cond_b

    .line 149
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersion:Ljava/lang/String;

    :cond_a
    move v3, v0

    move v5, v3

    :goto_4
    move-object v7, v2

    goto/16 :goto_0

    :cond_b
    if-eqz v6, :cond_d

    if-eqz v7, :cond_d

    .line 155
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersion:Ljava/lang/String;

    :cond_c
    move v3, v0

    move v6, v3

    goto :goto_4

    :cond_d
    const-string v8, "(client/server)"

    .line 160
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v7, :cond_e

    if-eqz v4, :cond_e

    if-nez v5, :cond_e

    if-nez v6, :cond_e

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersion:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersion:Ljava/lang/String;

    move v3, v0

    move-object v4, v2

    move-object v7, v4

    move v5, v9

    move v6, v5

    goto/16 :goto_0

    :cond_e
    move v3, v0

    goto/16 :goto_0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setClientVersionProperty(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->clientVersionProperty:Ljava/lang/String;

    return-void
.end method

.method public setServerVersionProperty(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersionProperty:Ljava/lang/String;

    return-void
.end method

.method public supportsCvsLogWithSOption()Z
    .locals 9

    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersion:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 92
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->serverVersion:Ljava/lang/String;

    const-string v3, "."

    invoke-direct {v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x0

    .line 95
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 96
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    move v7, v1

    .line 98
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 103
    :cond_2
    :goto_2
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v6, 0x64

    .line 108
    div-long/2addr v2, v6

    goto :goto_0

    :cond_4
    :goto_3
    const-wide/16 v2, 0x2b5e

    cmp-long v0, v4, v2

    if-ltz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method
