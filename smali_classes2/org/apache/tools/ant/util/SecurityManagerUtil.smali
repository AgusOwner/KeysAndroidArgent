.class public final Lorg/apache/tools/ant/util/SecurityManagerUtil;
.super Ljava/lang/Object;
.source "SecurityManagerUtil.java"


# static fields
.field private static final isJava18OrHigher:Z

.field private static final sysPropWarnOnSecMgrUsage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "18"

    .line 28
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/util/SecurityManagerUtil;->isJava18OrHigher:Z

    const-string v0, "ant.securitymanager.usage.warn"

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/util/SecurityManagerUtil;->sysPropWarnOnSecMgrUsage:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSetSecurityManagerAllowed()Z
    .locals 1

    .line 37
    sget-boolean v0, Lorg/apache/tools/ant/util/SecurityManagerUtil;->isJava18OrHigher:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static warnOnSecurityManagerUsage(Lorg/apache/tools/ant/Project;)Z
    .locals 1

    if-nez p0, :cond_0

    .line 49
    sget-boolean p0, Lorg/apache/tools/ant/util/SecurityManagerUtil;->sysPropWarnOnSecMgrUsage:Z

    return p0

    :cond_0
    const-string v0, "ant.securitymanager.usage.warn"

    .line 51
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 53
    sget-boolean p0, Lorg/apache/tools/ant/util/SecurityManagerUtil;->sysPropWarnOnSecMgrUsage:Z

    return p0

    .line 55
    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
