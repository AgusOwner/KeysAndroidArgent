.class public Lorg/apache/tools/ant/util/optional/NoExitSecurityManager;
.super Ljava/lang/SecurityManager;
.source "NoExitSecurityManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    return-void
.end method


# virtual methods
.method public checkExit(I)V
    .locals 1

    .line 43
    new-instance v0, Lorg/apache/tools/ant/ExitException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/ExitException;-><init>(I)V

    throw v0
.end method

.method public checkPermission(Ljava/security/Permission;)V
    .locals 0

    return-void
.end method
