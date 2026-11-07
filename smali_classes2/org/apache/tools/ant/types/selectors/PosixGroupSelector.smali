.class public Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;
.super Ljava/lang/Object;
.source "PosixGroupSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/FileSelector;


# instance fields
.field private followSymlinks:Z

.field private group:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;->followSymlinks:Z

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    .line 64
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;->group:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 68
    :try_start_0
    iget-boolean p2, p0, Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;->followSymlinks:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const-class p3, Ljava/nio/file/attribute/PosixFileAttributes;

    new-array v1, p1, [Ljava/nio/file/LinkOption;

    invoke-static {p2, p3, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p2

    check-cast p2, Ljava/nio/file/attribute/PosixFileAttributes;

    .line 69
    invoke-interface {p2}, Ljava/nio/file/attribute/PosixFileAttributes;->group()Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const-class p3, Ljava/nio/file/attribute/PosixFileAttributes;

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v2, v1, p1

    invoke-static {p2, p3, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p2

    check-cast p2, Ljava/nio/file/attribute/PosixFileAttributes;

    .line 70
    invoke-interface {p2}, Ljava/nio/file/attribute/PosixFileAttributes;->group()Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 71
    invoke-interface {p2}, Ljava/nio/file/attribute/GroupPrincipal;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;->group:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    move p1, v0

    :catch_0
    :cond_1
    return p1

    .line 65
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "the group attribute is required"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFollowSymlinks(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;->followSymlinks:Z

    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;->group:Ljava/lang/String;

    return-void
.end method
