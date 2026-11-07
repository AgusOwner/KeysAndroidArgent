.class public final synthetic Lorg/apache/commons/lang3/time/FormatCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;

.field public final synthetic f$1:Ljava/lang/Integer;

.field public final synthetic f$2:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FormatCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/apache/commons/lang3/time/FormatCache$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Integer;

    iput-object p3, p0, Lorg/apache/commons/lang3/time/FormatCache$$ExternalSyntheticLambda0;->f$2:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/lang3/time/FormatCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Integer;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FormatCache$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Integer;

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FormatCache$$ExternalSyntheticLambda0;->f$2:Ljava/util/Locale;

    check-cast p1, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;

    invoke-static {v0, v1, v2, p1}, Lorg/apache/commons/lang3/time/FormatCache;->lambda$getPatternForStyle$1(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Locale;Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
