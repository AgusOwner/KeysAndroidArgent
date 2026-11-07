.class public Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReleaseInfoEntry"
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private key:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V
    .locals 0

    .line 1548
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1545
    sget-object p1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->charset:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1559
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1545
    sget-object p1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->charset:Ljava/lang/String;

    .line 1560
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->setKey(Ljava/lang/String;)V

    .line 1561
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 1644
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 1620
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1572
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1595
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    .line 1656
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->charset:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 1633
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->file:Ljava/io/File;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1584
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1607
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->value:Ljava/lang/String;

    return-void
.end method

.method public toProperties()Ljava/util/Properties;
    .locals 4

    .line 1705
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 1706
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 1708
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->charset:Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 1707
    invoke-static {v1, v2}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1710
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 1711
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 1707
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 1712
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot read release info file \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1714
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 1717
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->key:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-object v0
.end method

.method public validate()V
    .locals 3

    .line 1667
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->file:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->key:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1668
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1670
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    const-string v2, "Release info must define \'key\' and \'value\' attributes, or a \'file\' attribute."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1672
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->key:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->value:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    .line 1673
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1675
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    const-string v2, "Release info cannot define both a file attribute and key/value attributes."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1680
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->charset:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1686
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1688
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 1681
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoEntry;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1682
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    const-string v2, "Charset cannot be null."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method
