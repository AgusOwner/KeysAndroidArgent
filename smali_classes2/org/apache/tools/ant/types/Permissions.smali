.class public Lorg/apache/tools/ant/types/Permissions;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/Permissions$MySM;,
        Lorg/apache/tools/ant/types/Permissions$Permission;
    }
.end annotation


# static fields
.field private static final PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private active:Z

.field private final delegateToOldSM:Z

.field private granted:Ljava/security/Permissions;

.field private final grantedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/Permissions$Permission;",
            ">;"
        }
    .end annotation
.end field

.field private origSm:Ljava/lang/SecurityManager;

.field private final revokedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/Permissions$Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 65
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/types/Permissions;->PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/Permissions;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 81
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->grantedPermissions:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->revokedPermissions:Ljava/util/List;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    .line 60
    iput-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->origSm:Ljava/lang/SecurityManager;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/Permissions;->active:Z

    .line 82
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/Permissions;->delegateToOldSM:Z

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/types/Permissions;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lorg/apache/tools/ant/types/Permissions;->active:Z

    return p0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/types/Permissions;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lorg/apache/tools/ant/types/Permissions;->delegateToOldSM:Z

    return p0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/types/Permissions;)Ljava/security/Permissions;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/tools/ant/types/Permissions;)Ljava/lang/SecurityManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/apache/tools/ant/types/Permissions;->origSm:Ljava/lang/SecurityManager;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/tools/ant/types/Permissions;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/apache/tools/ant/types/Permissions;->revokedPermissions:Ljava/util/List;

    return-object p0
.end method

.method private createPermission(Lorg/apache/tools/ant/types/Permissions$Permission;)Ljava/security/Permission;
    .locals 4

    .line 180
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/security/Permission;

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getActions()Ljava/lang/String;

    move-result-object v2

    .line 183
    sget-object v3, Lorg/apache/tools/ant/types/Permissions;->PARAMS:[Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 184
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Permission;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 187
    :catch_0
    new-instance v0, Ljava/security/UnresolvedPermission;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getActions()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/security/UnresolvedPermission;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/Certificate;)V

    return-object v0
.end method

.method private init()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/security/Permissions;

    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->revokedPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " does not contain a class."

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Permissions$Permission;

    .line 137
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Revoked permission "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->grantedPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Permissions$Permission;

    .line 142
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 146
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/types/Permissions;->createPermission(Lorg/apache/tools/ant/types/Permissions$Permission;)Ljava/security/Permission;

    move-result-object v1

    .line 147
    iget-object v3, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    invoke-virtual {v3, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    goto :goto_1

    .line 143
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Granted permission "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/net/SocketPermission;

    const-string v2, "localhost:1024-"

    const-string v3, "listen"

    invoke-direct {v1, v2, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 152
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.version"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vendor"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vendor.url"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 155
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.class.version"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "os.name"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 157
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "os.version"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 158
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "os.arch"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 159
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "file.encoding"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 160
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "file.separator"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 161
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "path.separator"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "line.separator"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 163
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.specification.version"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 164
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.specification.vendor"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.specification.name"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vm.specification.version"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 167
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vm.specification.vendor"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 168
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vm.specification.name"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vm.version"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vm.vendor"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 171
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vm.name"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    return-void
.end method


# virtual methods
.method public addConfiguredGrant(Lorg/apache/tools/ant/types/Permissions$Permission;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->grantedPermissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addConfiguredRevoke(Lorg/apache/tools/ant/types/Permissions$Permission;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->revokedPermissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized restoreSecurityManager()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Security checks are disabled - "

    const-string v1, "Use of <permissions> or "

    monitor-enter p0

    .line 200
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/SecurityManagerUtil;->isSetSecurityManagerAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/apache/tools/ant/types/Permissions;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disallowed in current Java runtime version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Permissions;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/util/SecurityManagerUtil;->warnOnSecurityManagerUsage(Lorg/apache/tools/ant/Project;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/types/Permissions;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 208
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/Permissions;->active:Z

    .line 212
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->origSm:Ljava/lang/SecurityManager;

    invoke-static {v0}, Ljava/lang/System;->setSecurityManager(Ljava/lang/SecurityManager;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSecurityManager()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Security checks are disabled - "

    const-string v1, "Use of <permissions> or "

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/SecurityManagerUtil;->isSetSecurityManagerAllowed()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/apache/tools/ant/types/Permissions;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disallowed in current Java runtime version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Permissions;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/util/SecurityManagerUtil;->warnOnSecurityManagerUsage(Lorg/apache/tools/ant/Project;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/types/Permissions;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->origSm:Ljava/lang/SecurityManager;

    .line 126
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Permissions;->init()V

    .line 127
    new-instance v0, Lorg/apache/tools/ant/types/Permissions$MySM;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/Permissions$MySM;-><init>(Lorg/apache/tools/ant/types/Permissions;Lorg/apache/tools/ant/types/Permissions$1;)V

    invoke-static {v0}, Ljava/lang/System;->setSecurityManager(Ljava/lang/SecurityManager;)V

    .line 128
    iput-boolean v3, p0, Lorg/apache/tools/ant/types/Permissions;->active:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
