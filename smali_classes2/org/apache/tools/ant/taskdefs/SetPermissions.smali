.class public Lorg/apache/tools/ant/taskdefs/SetPermissions;
.super Lorg/apache/tools/ant/Task;
.source "SetPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;
    }
.end annotation


# instance fields
.field private failonerror:Z

.field private nonPosixMode:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

.field private final permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Lorg/apache/tools/ant/types/resources/Resources;


# direct methods
.method public static synthetic $r8$lambda$U_QlcWB8Xuvutp-FPuoHlo0M96U(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X14yI0DKSIkku-nNGcfd2Se_NAM(Lorg/apache/tools/ant/taskdefs/SetPermissions;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->posixPermissionsNotSupported(Ljava/nio/file/Path;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 55
    const-class v0, Ljava/nio/file/attribute/PosixFilePermission;

    .line 56
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->failonerror:Z

    .line 59
    sget-object v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->fail:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->nonPosixMode:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    return-void
.end method

.method private isWritable()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 227
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 228
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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

.method static synthetic lambda$setPermissions$0(Ljava/lang/String;)Z
    .locals 0

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$setPermissions$1(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    .line 91
    const-class v0, Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava/nio/file/attribute/PosixFilePermission;

    return-object p0
.end method

.method private varargs maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 170
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 171
    iget-boolean p3, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->failonerror:Z

    if-eqz p3, :cond_1

    .line 172
    instance-of p3, p1, Lorg/apache/tools/ant/BuildException;

    if-eqz p3, :cond_0

    .line 173
    check-cast p1, Lorg/apache/tools/ant/BuildException;

    throw p1

    .line 175
    :cond_0
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p3, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 177
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Warning: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->log(Ljava/lang/String;I)V

    return-void
.end method

.method private posixPermissionsNotSupported(Ljava/nio/file/Path;)V
    .locals 5

    const-string v0, "the associated path \'%s\' does not support the PosixFileAttributeView"

    .line 181
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 184
    sget-object v1, Lorg/apache/tools/ant/taskdefs/SetPermissions$1;->$SwitchMap$org$apache$tools$ant$taskdefs$SetPermissions$NonPosixMode:[I

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->nonPosixMode:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-direct {p0, p1, v4}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->tryDos(Ljava/nio/file/Path;Z)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-direct {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->tryDos(Ljava/nio/file/Path;Z)V

    goto :goto_0

    .line 188
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Warning: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->log(Ljava/lang/String;I)V

    :goto_0
    return-void

    .line 186
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private tryDos(Ljava/nio/file/Path;Z)V
    .locals 4

    const-string v0, "Falling back to DosFileAttributeView"

    const/4 v1, 0x4

    .line 200
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->log(Ljava/lang/String;I)V

    .line 201
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->isWritable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 202
    const-class v1, Ljava/nio/file/attribute/DosFileAttributeView;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1, v3}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/DosFileAttributeView;

    if-eqz v1, :cond_0

    .line 205
    :try_start_0
    invoke-interface {v1, v0}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \'%s\'"

    .line 210
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 208
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Failed to set permissions on \'%s\' due to %s"

    .line 207
    invoke-direct {p0, p2, v0, p1}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "the associated path \'%s\' does not support the DosFileAttributeView"

    .line 215
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_1

    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Warning: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->log(Ljava/lang/String;I)V

    :goto_0
    return-void

    .line 219
    :cond_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public execute()V
    .locals 9

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 147
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, v2

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/types/Resource;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_2

    .line 150
    :try_start_2
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/SetPermissions;)V

    invoke-static {v4, v3, v5}, Lorg/apache/tools/ant/util/PermissionUtils;->setPermissions(Lorg/apache/tools/ant/types/Resource;Ljava/util/Set;Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_3
    const-string v5, "Failed to set permissions on \'%s\' due to %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    .line 152
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-direct {p0, v3, v5, v6}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    move-object v3, v4

    goto :goto_0

    :catch_2
    move-exception v0

    .line 165
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_3
    move-object v3, v2

    :catch_4
    :goto_2
    const-string v0, "the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \'%s\'"

    .line 160
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 156
    :catch_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    const-string v1, ", "

    .line 158
    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "some specified permissions are not of type PosixFilePermission: %s"

    .line 156
    invoke-direct {p0, v2, v1, v0}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_3
    return-void

    .line 143
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one resource-collection is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFailOnError(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->failonerror:Z

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    .line 102
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    invoke-static {p1}, Lorg/apache/tools/ant/util/PermissionUtils;->permissionsFromMode(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setNonPosixMode(Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->nonPosixMode:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    return-void
.end method

.method public setPermissions(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ","

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda1;-><init>()V

    .line 89
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda2;-><init>()V

    .line 90
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda3;-><init>()V

    .line 91
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    .line 92
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
