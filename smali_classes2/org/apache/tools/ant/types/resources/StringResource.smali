.class public Lorg/apache/tools/ant/types/resources/StringResource;
.super Lorg/apache/tools/ant/types/Resource;
.source "StringResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final STRING_MAGIC:I


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "StringResource"

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Resource;->getMagicNumber([B)I

    move-result v0

    sput v0, Lorg/apache/tools/ant/types/resources/StringResource;->STRING_MAGIC:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    const-string v0, "UTF-8"

    .line 43
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/resources/StringResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    const-string v0, "UTF-8"

    .line 43
    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/StringResource;->setProject(Lorg/apache/tools/ant/Project;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/resources/StringResource;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/types/resources/StringResource;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->checkChildrenAllowed()V

    .line 125
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/StringResource;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected declared-synchronized getContent()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getValue()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEncoding()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getRef()Lorg/apache/tools/ant/types/resources/StringResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/StringResource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 193
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 197
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    monitor-exit p0

    return-object v1

    .line 195
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unset string value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getRef()Lorg/apache/tools/ant/types/resources/StringResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/StringResource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 214
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/resources/StringResource$StringResourceFilterOutputStream;-><init>(Lorg/apache/tools/ant/types/resources/StringResource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 215
    :cond_1
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/types/resources/ImmutableResourceException;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/ImmutableResourceException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getRef()Lorg/apache/tools/ant/types/resources/StringResource;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/StringResource;
    .locals 1

    .line 242
    const-class v0, Lorg/apache/tools/ant/types/resources/StringResource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/StringResource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/StringResource;

    return-object v0
.end method

.method public declared-synchronized getSize()J
    .locals 2

    monitor-enter p0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getRef()Lorg/apache/tools/ant/types/resources/StringResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/StringResource;->getSize()J

    move-result-wide v0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    .line 152
    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    monitor-enter p0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getRef()Lorg/apache/tools/ant/types/resources/StringResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/StringResource;->hashCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 166
    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->hashCode()I

    move-result v0

    sget v1, Lorg/apache/tools/ant/types/resources/StringResource;->STRING_MAGIC:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isExists()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized setEncoding(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->checkAttributesAllowed()V

    .line 134
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setName(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Lorg/apache/tools/ant/types/resources/ImmutableResourceException;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/ImmutableResourceException;-><init>()V

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/StringResource;->encoding:Ljava/lang/String;

    const-string v1, "UTF-8"

    if-ne v0, v1, :cond_0

    .line 229
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized setValue(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/StringResource;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/StringResource;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
