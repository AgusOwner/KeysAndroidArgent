.class public Lorg/apache/commons/lang3/time/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/time/CalendarUtils;


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lorg/apache/commons/lang3/time/CalendarUtils;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/CalendarUtils;-><init>(Ljava/util/Calendar;)V

    sput-object v0, Lorg/apache/commons/lang3/time/CalendarUtils;->INSTANCE:Lorg/apache/commons/lang3/time/CalendarUtils;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/time/CalendarUtils;-><init>(Ljava/util/Calendar;Ljava/util/Locale;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Calendar;Ljava/util/Locale;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "calendar"

    .line 68
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const-string p1, "locale"

    .line 69
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->locale:Ljava/util/Locale;

    return-void
.end method

.method static getInstance(Ljava/util/Locale;)Lorg/apache/commons/lang3/time/CalendarUtils;
    .locals 2

    .line 45
    new-instance v0, Lorg/apache/commons/lang3/time/CalendarUtils;

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/time/CalendarUtils;-><init>(Ljava/util/Calendar;Ljava/util/Locale;)V

    return-object v0
.end method

.method static synthetic lambda$getMonthDisplayNames$0([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 112
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput-object p1, p0, p2

    return-void
.end method


# virtual methods
.method public getDayOfMonth()I
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDayOfYear()I
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method getMonthDisplayNames(I)[Ljava/lang/String;
    .locals 3

    .line 107
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, p1, v2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 112
    new-instance v1, Lorg/apache/commons/lang3/time/CalendarUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/time/CalendarUtils$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method getStandaloneLongMonthNames()[Ljava/lang/String;
    .locals 1

    const v0, 0x8002

    .line 121
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/time/CalendarUtils;->getMonthDisplayNames(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStandaloneShortMonthNames()[Ljava/lang/String;
    .locals 1

    const v0, 0x8001

    .line 129
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/time/CalendarUtils;->getMonthDisplayNames(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method
