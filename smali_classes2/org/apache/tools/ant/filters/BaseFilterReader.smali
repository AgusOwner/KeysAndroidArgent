.class public abstract Lorg/apache/tools/ant/filters/BaseFilterReader;
.super Ljava/io/FilterReader;
.source "BaseFilterReader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private initialized:Z

.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/io/StringReader;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->initialized:Z

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->project:Lorg/apache/tools/ant/Project;

    .line 52
    invoke-static {p0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->initialized:Z

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method


# virtual methods
.method protected final getInitialized()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->initialized:Z

    return v0
.end method

.method protected final getProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public final read([CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/BaseFilterReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v0

    :cond_1
    add-int v2, p2, v0

    int-to-char v1, v1

    .line 92
    aput-char v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method protected final readFully()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->in:Ljava/io/Reader;

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->readFully(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-eq v0, v1, :cond_2

    int-to-char v3, v0

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_0

    .line 185
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final setInitialized(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->initialized:Z

    return-void
.end method

.method public final setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method public final skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/BaseFilterReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide p1

    .line 111
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "skip value is negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
