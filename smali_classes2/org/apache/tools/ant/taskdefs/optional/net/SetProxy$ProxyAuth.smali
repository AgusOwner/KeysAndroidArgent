.class final Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;
.super Ljava/net/Authenticator;
.source "SetProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyAuth"
.end annotation


# instance fields
.field private auth:Ljava/net/PasswordAuthentication;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 274
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    .line 275
    new-instance v0, Ljava/net/PasswordAuthentication;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;->auth:Ljava/net/PasswordAuthentication;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$1;)V
    .locals 0

    .line 271
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;->auth:Ljava/net/PasswordAuthentication;

    return-object v0
.end method
