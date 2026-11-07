.class public final synthetic Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Lorg/apache/tools/ant/Project;

.field public final synthetic f$2:Ljava/util/Properties;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lorg/apache/tools/ant/Project;Ljava/util/Properties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda0;->f$1:Lorg/apache/tools/ant/Project;

    iput-object p3, p0, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda0;->f$2:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda0;->f$1:Lorg/apache/tools/ant/Project;

    iget-object v2, p0, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda0;->f$2:Ljava/util/Properties;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lorg/apache/tools/ant/listener/MailLogger;->lambda$buildFinished$0(Ljava/util/Map;Lorg/apache/tools/ant/Project;Ljava/util/Properties;Ljava/lang/String;)V

    return-void
.end method
