.class Lorg/apache/tools/ant/types/Permissions$MySM;
.super Ljava/lang/SecurityManager;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/Permissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySM"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/types/Permissions;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/types/Permissions;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/types/Permissions;Lorg/apache/tools/ant/types/Permissions$1;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/Permissions$MySM;-><init>(Lorg/apache/tools/ant/types/Permissions;)V

    return-void
.end method

.method private checkRevoked(Ljava/security/Permission;)V
    .locals 3

    .line 272
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$500(Lorg/apache/tools/ant/types/Permissions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Permissions$Permission;

    .line 273
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->matches(Ljava/security/Permission;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Permission "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " was revoked."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public checkExit(I)V
    .locals 3

    .line 231
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "exitVM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Permissions$MySM;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 235
    new-instance v1, Lorg/apache/tools/ant/ExitException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/apache/tools/ant/ExitException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public checkPermission(Ljava/security/Permission;)V
    .locals 3

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$100(Lorg/apache/tools/ant/types/Permissions;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$200(Lorg/apache/tools/ant/types/Permissions;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exitVM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$300(Lorg/apache/tools/ant/types/Permissions;)Ljava/security/Permissions;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Permissions;->implies(Ljava/security/Permission;)Z

    move-result v0

    .line 250
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/Permissions$MySM;->checkRevoked(Ljava/security/Permission;)V

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$400(Lorg/apache/tools/ant/types/Permissions;)Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$400(Lorg/apache/tools/ant/types/Permissions;)Ljava/lang/SecurityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions$MySM;->this$0:Lorg/apache/tools/ant/types/Permissions;

    invoke-static {v0}, Lorg/apache/tools/ant/types/Permissions;->access$300(Lorg/apache/tools/ant/types/Permissions;)Ljava/security/Permissions;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Permissions;->implies(Ljava/security/Permission;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/Permissions$MySM;->checkRevoked(Ljava/security/Permission;)V

    goto :goto_0

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Permission "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " was not granted."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method
