.class public final synthetic Lorg/apache/tools/ant/taskdefs/HostInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/HostInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/HostInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/HostInfo$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/HostInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/HostInfo;

    check-cast p1, Ljava/net/NetworkInterface;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->lambda$executeLocal$0$org-apache-tools-ant-taskdefs-HostInfo(Ljava/net/NetworkInterface;)V

    return-void
.end method
