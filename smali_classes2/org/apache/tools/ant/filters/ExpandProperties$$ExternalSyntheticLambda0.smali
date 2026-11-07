.class public final synthetic Lorg/apache/tools/ant/filters/ExpandProperties$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/tools/ant/property/GetProperty;


# instance fields
.field public final synthetic f$0:Ljava/util/Properties;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Properties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/filters/ExpandProperties$$ExternalSyntheticLambda0;->f$0:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public final getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/filters/ExpandProperties$$ExternalSyntheticLambda0;->f$0:Ljava/util/Properties;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/filters/ExpandProperties;->$r8$lambda$K40WPnDgx1ISJ8GpCuRVeRVFHHk(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
